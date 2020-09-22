<?php

  //Require API call
  require '../controllers/services/returnDeputy.php';
  //Require DB infos
  require './dbconfig.php';

  // Each API response will be created at DB
  foreach($deputys->list as $Deputy) {    

    try {

      //Create new PDO connection
      $conn = new PDO('mysql:host='.$host.';dbname='.$db_name.';charset=utf8', $username, $password);

      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      // prepare sql and bind parameters
      $queryHandle = $conn->prepare("INSERT INTO `deputys` (`id`, `name`) VALUES (:id, :name)");

      $queryHandle->bindParam(':id', $Deputy->id);
      $queryHandle->bindParam(':name', $Deputy->nome);
      
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

?>