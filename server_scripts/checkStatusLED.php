<?php

include('../yourOwnConnection.php');
 
 $q ="SELECT * FROM `fashionAndTech` 
ORDER BY ID ASC
";

 $page_imp_r=mysql_query($q) or print(mysql_error());
  echo "$";
  while ($page_imp=mysql_fetch_array($page_imp_r)){
 echo $page_imp['value']."&";
 }
 
?>