<?php
$client = new SoapClient("http://pascal.fis.agh.edu.pl/~9kolodziejmir/soap/Serwer_5.php?wsdl");
  try {
         $wyniki = $client->getResults(5);
         print $wyniki ;
      }
  catch (SoapFault $exception)
      {
         echo $exception;
      }
?>
