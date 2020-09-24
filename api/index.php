<?php

  header('Content-Type: application/json; charset=utf-8');

  require_once '../controllers/classes/Deputados.php';

  class Rest {

    public static function open($request) {
      // Explode to separate class and method
      $url = explode('/', $request['url']);

      //Get class at first position
      $class = ucfirst($url[0]);

      // Shift to get method at first position
      array_shift($url);
      $method = $url[0];

      // Shift to get params if exists, else will be an empty array
      array_shift($url);
      $params = array();
      $params = $url;

      // Try to read class and method
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

          } else {
            //Error if method is not found
            return json_encode(
              array(
                'status' => 'erro',
                'dados' => 'Não foi possível encontrar os dados', 
                'type' => 'Método não encontrado'
              )
            );
          }

        } else {
          //Error if class is not found
          return json_encode(
            array(
              'status' => 'erro',
              'dados' => 'Não foi possível encontrar os dados', 
              'type' => 'Classe não encontrada'
            )
          );

        }

      } catch (Exception $e) {
        //Catch error from methods
        return json_encode(array('status' => 'erro', 'dados' => $e->getMessage()));
      }
    }
  }

  //Get request and call the class
  if (isset($_REQUEST)) {
    echo Rest::open($_REQUEST);
  }

?>