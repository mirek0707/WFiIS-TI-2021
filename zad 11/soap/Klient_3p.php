<?php
$client = new SoapClient(null, array(
      'location' => "http://pascal.fis.agh.edu.pl/~9kolodziejmir/soap/Serwer_3.php",
      'uri'      => "//pascal.fis.agh.edu.pl/SoapServer",
      'soap_version' => SOAP_1_1 ,
      'trace'    => 0 ));
  
   $add = $client->__soapCall("add",array(16, 18));
   echo("<br/>Dodawanie: ".$add);
  
   $subtract = $client->__soapCall("subtract",array(10, 2));
   echo("<br/>Odejmowanie: ".$subtract);
   
   $multiply = $client->__soapCall("multiply",array(5, 5));
   echo("<br/>Mnozenie: ".$multiply);
   
   $divide = $client->__soapCall("divide",array(1024, 2));
   echo("<br/>Dzielenie: ".$divide);
  
?>
