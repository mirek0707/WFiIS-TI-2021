<?php
function __autoload($class_name){
    include $class_name.'.php';
}
$user = new Register_new;

if ($user->_is_logged()){
    $res = $user->_search();
    if($res){
        echo "<p>Znaleziono uzytkownika o podanym adresie email.</p>" ;
        echo "<p>Imię: ".$res['fname']."</p>" ;
        echo "<p>Nazwisko: ".$res['lname']."</p>" ;
        echo "<p>E-mail: ".$res['email']."</p>" ;
    } 
    else{
        echo "<p>Nie znaleziono takiego uzytkownika</p>";
    }
    echo "<p><a href='zad04.php'>Powrot do strony glownej</a></p>";
}
?>