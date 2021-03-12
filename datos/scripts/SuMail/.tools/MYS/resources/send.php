<?php 

// github: https://github.com/ByDog3r

if ($_POST)
{

    $to = $_POST['destinatario'];
    $subject = $_POST['asunto'];
    $message = $_POST['mensaje'];
    $from = $_POST['remitente'];
    $headers = "From: ".$from;

    $mail = mail($to,$subject,$message,$headers,$from);

if($mail) 

{
    echo "Email enviado a ".$to;
}

}
?>