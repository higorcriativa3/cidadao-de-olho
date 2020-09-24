<?php

  //Require API call
  require '../controllers/services/returnDeputy.php';
  //Require DB infos
  require './dbconfig.php';

  //Each Deputy
  foreach($deputys->list as $Deputy) {

    $month = array();

    //For months
    for($i = 1; $i <=12; $i++){

      $deputyId = $Deputy->id;

      //Return refunds fo month (i)
      $urlForRefundApi = "http://dadosabertos.almg.gov.br/ws/prestacao_contas/verbas_indenizatorias/deputados/${deputyId}/2019/${i}?formato=json";

      $ch = curl_init($urlForRefundApi);
    
      curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
      curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json' 
      ));

      $response = curl_exec($ch);
      $refunds = json_decode($response);

      $count = 0;

      //Count refunds of month
      foreach($refunds->list as $deputyRefund) {
        $count += count($deputyRefund->listaDetalheVerba);        
      }

      //Push refund count of month into an array
      $month[$i] = $count;

      //Delay to prevent traffic busy
      sleep(5);
    }

    try {

      //Create new PDO connection
      $conn = new PDO('mysql:host='.$host.';dbname='.$db_name.';charset=utf8', $username, $password);

      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      // prepare sql and bind parameters
      $queryHandle = $conn->prepare("INSERT INTO `months` (`id`, `name`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`) VALUES (:id, :name, :1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11, :12)");

      $queryHandle->bindParam(':id', $Deputy->id);
      $queryHandle->bindParam(':name', $Deputy->nome);
      $queryHandle->bindParam(':1', $month[1]);
      $queryHandle->bindParam(':2', $month[2]);
      $queryHandle->bindParam(':3', $month[3]);
      $queryHandle->bindParam(':4', $month[4]);
      $queryHandle->bindParam(':5', $month[5]);
      $queryHandle->bindParam(':6', $month[6]);
      $queryHandle->bindParam(':7', $month[7]);
      $queryHandle->bindParam(':8', $month[8]);
      $queryHandle->bindParam(':9', $month[9]);
      $queryHandle->bindParam(':10', $month[10]);
      $queryHandle->bindParam(':11', $month[11]);
      $queryHandle->bindParam(':12', $month[12]);
      
      $queryHandle->execute();

      $err = '';

    } catch (PDOException $e) {

      $err = "Error: " . $e->getMessage();

    }
    //Return error
    if ($err !== '') {
      var_dump($err);
    }
  }

  //Delay to prevent traffic busy
  sleep(5);
    
?>