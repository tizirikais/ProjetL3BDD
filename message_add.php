<?php
require_once("connexionbdd.php");
if(isset($_SESSION['userid'])) {
    if(isset($_POST['envoiemessage'])&&!empty($_POST['message']))
    {
        $messagepseudo=htmlentities($_POST['pseudo']);
        $message=htmlentities($_POST['message']);
        $date = date("Y-m-d H:i:s");
        $reqmess = $bdd->prepare("SELECT * FROM messagetable WHERE message = ?");
        $reqmess ->execute(array($message));
        if($reqmess->rowCount()==0)
        {
            $newmessage=$bdd->prepare("INSERT INTO messagetable (userid,pseudo,datecreate,message)VALUES(?,?,?,?)");
            $newmessage->execute(array($_SESSION['userid'],$messagepseudo,$date,$message));
        }
    }
    header("location:monespace.php");
}else{
    header("location:index.php");
}
?>