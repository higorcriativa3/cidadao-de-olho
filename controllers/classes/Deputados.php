<?php

  class Deputados {

    public function top5() {
      $conn = new PDO('mysql: host=localhost; dbname=cidadao_de_olho;', 'root', '');      

      $sql = "SELECT * FROM `months`";
      $sql = $conn->prepare($sql);
      $sql->execute();

      $result = array();

      while($row = $sql->fetch(PDO::FETCH_ASSOC)) {
        $result[] = $row;
      }

      $months = array();
      $topFive = array();

      //For 12 months of the year
      for($i = 1; $i <= 12; $i++) {

        //For each result of DB
        foreach($result as $k => $v) {        
          $refunds[] = array('id' => $result[$k]['id'], 'nome' => $result[$k]['name'], 'qtd' => $result[$k][$i]);                 
        }

        //Convert to object
        $refunds = array_map(fn($arr) => (object)$arr, $refunds);

        //Order by amount of refunds
        usort($refunds, function($a, $b) {
          return $a->qtd < $b->qtd;
        });

        //Push refund sorted
        $months[] = array( 'mes'.$i => $refunds);
      }

      //Run through object month and get first five
      foreach($months as $k => $month) {

        $monthNumber = $k + 1;

        foreach($month as $v) {

          $topFive[] = array(
            'mes'.$monthNumber => array(
              'primeiro' => $v[0],
              'segundo' => $v[1],
              'terceiro' => $v[2],
              'quarto' => $v[3],
              'quinto' => $v[4],
            )
          );

        }        
        
      }

      if (!$result) {

        throw new Exception("Nenhum dado encontrado");

      }

      // return $months;
      return $topFive;

    } 

    public function redes() {
      //Call to API
      $urlForPhoneDirectory = "http://dadosabertos.almg.gov.br/ws/deputados/lista_telefonica?formato=json";

      $ch = curl_init($urlForPhoneDirectory);

      curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
      curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json' 
      ));

      $response = curl_exec($ch);
      $phoneDirectory = json_decode($response);

      $facebookCount = 0;
      $twitterCount = 0;
      $instagramCount = 0;
      $youtubeCount = 0;
      $isEmpty = 0;

      //For each in parent object
      foreach($phoneDirectory as $deputy){
        //For each deputy
        foreach($deputy as $socialMedia){
          //For each social media
          foreach($socialMedia->redesSociais as $social) {

            //Get id of social media and count
            $socialId = $social->redeSocial->id;
            if ($socialId == 0) {
              $facebookCount++; 
            } elseif ($socialId == 1) {
              $twitterCount++; 
            } elseif ($socialId == 19) {
              $instagramCount++; 
            } elseif ($socialId == 3) {
              $youtubeCount++; 
            } else {
              $isEmpty++;
            }
          }
        }
      }

      $socialCount = array(        
        'facebook' => $facebookCount,
        'instagram' => $instagramCount,        
        'twitter' => $twitterCount,
        'youtube' => $youtubeCount
      );

      return $socialCount;
    }

  }

?>