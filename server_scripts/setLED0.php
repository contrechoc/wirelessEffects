<?php

include('../yourOwnConnection.php');
 
 $value1 = 1;
 $value0 = 0;
 $ID1 = 1;
 $ID0 = 0;
 
  $q ="SELECT * FROM `fashionAndTech` 
  WHERE ID=".$ID0."
ORDER BY ID ASC
";
$page_imp_r=mysql_query($q) or print(mysql_error());
  while ($page_imp=mysql_fetch_array($page_imp_r)){
 	$value0 = $page_imp['value'] + 1;
 }
if ( $value0 > 6 ) $value0 = 0;


 $q="UPDATE fashionAndTech 
		SET value='".$value0."'
		WHERE ID='".$ID0."'  ";
		$page_imp_r=mysql_query($q) or print(mysql_error());
		
	/*	
$q="UPDATE fashionAndTech 
		SET value='".$value1."'
		WHERE ID='".$ID1."'  ";
		$page_imp_r=mysql_query($q) or print(mysql_error());
		*/
		
echo "up";
 
?>