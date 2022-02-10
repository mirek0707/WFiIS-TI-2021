<?php
function add($a, $b) { 
   return $a+$b;
} 

function subtract($a, $b) { 
   return $a-$b;
} 

function multiply($a, $b) { 
   return $a*$b;
} 

function divide($a, $b) { 
   return $a/$b;
} 
  
   $server = new SoapServer(null, array(
      'uri' => "http://pascal.fis.agh.edu.pl/SoapServer",
      'soap_version' => SOAP_1_2));
   $server->addFunction("add"); 
   $server->addFunction("subtract");
   $server->addFunction("multiply");
   $server->addFunction("divide");

   $server->handle();
  
?>
