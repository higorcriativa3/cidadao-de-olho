<?php
  //Return refunds fo month (i)
  $urlForPhoneDirectory = "http://dadosabertos.almg.gov.br/ws/deputados/lista_telefonica?formato=json";

  $ch = curl_init($urlForPhoneDirectory);

  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json' 
  ));

  $response = curl_exec($ch);
  $phoneDirectory = json_decode($response);

  foreach($phoneDirectory as $deputy){
    foreach($deputy->redesSociais as $socialMidia){
      echo $socialMidia->redeSocial->id;
    }
  }
?>