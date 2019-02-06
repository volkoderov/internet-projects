<?php 

$db = new mysqli('localhost', 'root','', 'test_internet_projects');
$query="SELECT * FROM username left outer join tel ON username.id=tel.id left outer join dob on username.id=dob.id";

$result = $db->query($query);
while($val = $result->fetch_assoc()) {
	$users[]=$val;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Test</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">Тест</div>
		</div>
	</header>
	<div class="container">
		<table class="table">
			<tr>
				<th>Имя</th>
				<th>Фамилия</th>
				<th>Дата рождения</th>
				<th>Номер телефона</th>
			</tr>
			<?php foreach ($users as $value): ?>
				<tr>
					<td><?=$value['name']?></td>
					<td><?=$value['surname']?></td>
					<td><?=$value['dob']?></td>
					<td><?=$value['tel']?></td>
				</tr>
			<?php endforeach; ?>
		</table>
	</div>
</body>

</html>