l<?php

include('../yourOwnConnection.php');
 
 $value1 = 1;
 $value0 = 0;
 $ID1 = 1;
 $ID0 = 0;

 $value0 =  $_REQUEST["value"] ;

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
 
 echo "pattern= ".$value0;
 
?>