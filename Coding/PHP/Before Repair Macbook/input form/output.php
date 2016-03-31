<!doctype html>
<html>
	<head>
		<title>output.php</title>
		<meta charset="UTF-8" lang="jp">	
	</head>
	
	<body>
		<?php 
			$name = $_POST['name'];
			echo "こんにちは、$name";
		?>
		
		<?php 
			$time = date("Y年n月j日 Ah:i");
			echo $time;
		?>
	</body>
</html>

