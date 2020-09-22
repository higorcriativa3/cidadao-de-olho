<?php

  // URL for deputys consult
  $urlForDeputysApi = "http://dadosabertos.almg.gov.br/ws/deputados/situacao/1?formato=json";

  //Init cURL
  $ch = curl_init($urlForDeputysApi);
  
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json' 
  ));

  $response = curl_exec($ch);

  //Decode JSON to PHP
  $deputys = json_decode($response);

  curl_close($ch);
?>