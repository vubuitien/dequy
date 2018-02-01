<!DOCTYPE html>
<?php include 'db.php' ?>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php
		$results = $connect->query("SELECT * FROM menu WHERE parent_id = 0 ORDER BY id ASC");
		if ($results->num_rows > 0) {
			echo '<div class="content">';
			echo '<ul class="main-navigation">';
			while($show = $results->fetch_object()){
				echo '<li><a href="#" >' . $show->title . '</a>'; 
				menu($show->id);
				echo '</li>';
			}
			echo '</ul>';
			echo '</div>';
		}
	?>
	<?php
		function menu($parent_id) {
			global $connect;
			$submenu = $connect->query("SELECT * FROM menu WHERE parent_id = ".$parent_id);
			if ($submenu->num_rows > 0) {
				echo '<ul>';
				while($show = $submenu->fetch_object()){
					echo '<li><a href="#" >' . $show->title . '</a>';
					menu($show->id);
					echo '</li>';
				}
				echo '</ul>';
			}
		}
	?>
</body>
</html>
