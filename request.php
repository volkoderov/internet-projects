<?php 

/*$arr[0][name]='Иван';
$arr[0][surename]='Иванов';
$arr[0][tel]='89824810000';

$arr[1][name]='Сидор';
$arr[1][surename]='Сидоров';
$arr[1][tel]='89824810000';*/
$values = "";

for($i = 0; $i < count($arr); $i++){

	if($values != "")
		$values .= ",";

	$values .= "('".$arr[$i][name]."', '".$arr[$i][surename]."', ".$arr[$i][tel].")";
}

$q="INSERT INTO user (name,surename,tel) VALUES $values";
echo $q;
//$query = $db->query($q);