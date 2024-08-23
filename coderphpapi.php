<?php
error_reporting(0);
ini_set('display_errors', 1);
$opts = array('http' => array('header' => 'Accept-Charset: UTF-8, *;q=0'));
$context = stream_context_create($opts);
@$usuarios = str_replace(' ', '', $_POST['palavra']);
$filename = "https://www.kayak.com.br/mvm/smartyv2/search?f=j&s=58&where=$usuarios";
$coderphp = file_get_contents($filename, false, $context);

$ok = json_decode($coderphp);


foreach($ok as $coderphp):

    echo "<div style=';padding:6px;width:300px;height:auto;background:white;'><b><a style='font-size:14px;text-decoration:none;color:rgb(130,130,130)'  href='#' onClick='catchValue1(); return false;'>$coderphp->displayname</a></b>
    <hr>

    </div>";

endforeach;


?>