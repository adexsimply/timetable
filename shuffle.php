<?php
include "includes/dbcon.php";
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php for ($j=1; $j <=4 ; $j++) { ?>
<h1><?php echo "JSS".$j; ?></h1>
	<table border="1">
		<tr>
			<thead>
				<th>Day</th>
				<th>1</th>
				<th>2</th>
				<th>3</th>
				<th>4</th>
				<th>5</th>
				<th>6</th>
				<th>7</th>
				<th>8</th>			
			</thead>
		</tr>
		<tr>
		<?php $day_of_week;
		for ($i=1; $i <=5 ; $i++) {
			if ($i==1) {$day_of_week="Monday";}
			if ($i==2) {$day_of_week="Tuesday";}
			if ($i==3) {$day_of_week="Wednesday";}
			if ($i==4) {$day_of_week="Thursday";}
			if ($i==5) {$day_of_week="Friday";}
		 ?>
			<td><?php echo $day_of_week; ?></td><?php $query_subj = mysqli_query($link, "SELECT subject_name FROM junior_subjects ORDER BY RAND() LIMIT 8 ");
			while ($row_subj = mysqli_fetch_array($query_subj)) {
			$subject_list = $row_subj['subject_name']  ?>
			<td><input type="hidden" name="<?php $form_name = "JSS".$j.$subject_list;  echo strtolower(str_replace(' ', '', $form_name))?>" value="<?php echo $subject_list; ?>" /><?php echo $subject_list; ?></td>
			<?php } ?>
		</tr>
		<?php 
		} ?>
	</table>
<?php } ?>
</body>
</html>