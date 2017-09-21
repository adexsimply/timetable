<?php
include "includes/dbcon.php";
$subjects = array();

$query_subject = mysqli_query($link, "SELECT * FROM junior_subjects");
while ($row_subject=mysqli_fetch_array($query_subject))
{
	$array [] = $row_subject;
	$subject_name = $row_subject['subject_name'];
	$frequency = $row_subject['frequency'];
	//$subjects[] = array('name'=>$subject_name,'frequency'=>$frequency);
}
//mysqli_free_result($query_subject);
//var_dump($subjects); exit;
//$subjects = array('English' =>3, 'Maths' =>2, 'Economics' =>2);
$classes = array('Jss1A', 'Jss1B', 'Jss1C', 'Jss1D');
$periods = array('1','2','3','4','5','6','7','8');
$days = array('Mon','Tue','Wed','Thur','Fri');
///print_r(array_diff($subjects, $classes));

//echo array_rand($periods);
$timetable =array();
$class_timetable =array();
$subjects['English'];
//exit();
//for($i=0; $i<$subjects['English']; $i++ )
foreach ($subjects as $key => $values)
{
	for($i=0; $i<$values; $i++ )
	{
		foreach ($classes as $class)
		{
			$record = populate_time_table($key,$periods,$days,$class,$timetable); 
			$timetable[] = $record;

			$classT = $record;
			$classT[] = $class;
			$class_timetable[] = $classT;

			//$class_timetable = array_map(function($a) { return $a[0]; },$user_meta);
		}
	}
	
}

function addClass($item)
{
	var_dump($item);
	echo "<hr/>";
}

//print_r($timetable);
echo "<table border=1>
		<tr>
			<thead>
				
				<th>Class</th>
				<th>Subject</th>
				<th>Day</th>
				<th>Period</th>		
			</thead>
		</tr>";

		foreach ($class_timetable as $value) {
		
		echo "<tr>
			
			<td>$value[3]</td>
			<td>$value[2]</td>
			<td>$value[1]</td>
			<td>$value[0]</td>
		</tr>";

	}

echo "</table>";

function populate_time_table($subject,$periods,$days,$class,$timetable) {
	
		$entry = generate_entry($periods,$days,$subject);
		//check if duplicate if timetable populated
		if (!empty($timetable))
		{
			//print_r($timetable);
			
			while (isDuplicate($timetable,$entry)) {  

				//var_dump($entry);
				//echo "duplicate";
				$entry = generate_entry($periods,$days,$subject);
				//populate_time_table($subject,$periods,$days,$class,$timetable);
			}
		}

		
		//print_r($class_timetable);
		return $entry;
	

}

function generate_entry($periods,$days,$subject)
{
	$period = array_rand($periods);
	$period = $periods[$period];
	$day = array_rand($days);

	$day = $days[$day];
		//echo $class.$day.$period."<hr>";
	//echo $day;
	//print_r($timetable);
	return array($period,$day,$subject);
}

function isDuplicate($array1,$array2)
{
	foreach($array1 as $val)
	{
		if ($val === $array2) return true;
	}
}
?>