<?php

  header('Content-Type: application/json; charset=utf-8');

  require_once '../controllers/classes/Deputados.php';

  class Rest {

    public static function open($request) {
      $url = explode('/', $request['url']);

      $class = ucfirst($url[0]);
      array_shift($url);

      $method = $url[0];
      array_shift($url);

      $params = array();
      $params = $url;

      try {

        if(class_exists($class)) {

          if(method_exists($class, $method)) {

            $return = call_user_func_array(array(new $class, $method), $params);

            return json_encode(
              array(
                'status' => 'sucesso',
                'dados' => $return
              )
            );

          }

        } else {

          return json_encode(
            array(
              'status' => 'erro',
              'dados' => 'Não foi possível encontrar os dados. Classe não encontrada', 
              'type' => 'Classe ${class} não encontrada'
            )
          );

        }

      } catch (Exception $e) {
        return json_encode(array('status' => 'erro', 'dados' => $e->getMessage()));
      }
    }
  }

  if (isset($_REQUEST)) {
    echo Rest::open($_REQUEST);
  }

?>