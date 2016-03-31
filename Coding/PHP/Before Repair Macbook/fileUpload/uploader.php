<html>
	<head>
		<title>uploader.php</title>
		<meta charset="UTF-8" lang="jp">
	</head>
	
	<body>
		<p>file uploader</p>
		<?php 
			$updir = "./upload/";
			$filename = $_FILES['upfile']['name'];
			if(move_uploaded_file($_FILES['upfile']['tmp_name'], $updir.$filename)==FALSE){
				echo 'Upload failed';
				echo $_FILES['upfile']['error'];
			}else{
				echo "<p><b> $filename </b> uploaded</p>";
			}
		?>
	</body>
</html>
