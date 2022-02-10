<?php
$client = new SoapClient(null, array(
      'location' => "http://pascal.fis.agh.edu.pl/~9kolodziejmir/cgi-bin/soap/Serwer_3m.cgi",
      'uri'      => "//pascal.fis.agh.edu.pl/SoapServer",
      'soap_version' => SOAP_1_1 ,
      'trace'    => 0 ));
  
   $add = $client->__soapCall("add",array(1, 15));
   echo("<br/>Dodawanie: ".$add);
  
   $subtract = $client->__soapCall("subtract",array(14, 7));
   echo("<br/>Odejmowanie: ".$subtract);
   
   $multiply = $client->__soapCall("multiply",array(4, 5));
   echo("<br/>Mnozenie: ".$multiply);
   
   $divide = $client->__soapCall("divide",array(24, 2));
   echo("<br/>Dzielenie: ".$divide);
  
?>
