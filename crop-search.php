<?php
include ("frame.php");
$conn=mysqli_connect('localhost','root','','farmingworld');
if(isset($_POST['search'])){
	$q = $_POST['q'];
	 $output=".";
	$query12 = mysqli_query($conn,"SELECT * FROM `crops` WHERE `name` LIKE '%$q%'"); 
//Replace table_name with your table name and `thing_to_search` with the column you want to search
	$count = mysqli_num_rows($query12);
	if($count == "0"){
		$output = '<h2>No result found!</h2>';
	}else{
		while($row = mysqli_fetch_array($query12)){
		$s = $row['name'];
		$s1 = $row['type'];
		$s2 = $row['varieties'];
        $s3= $row['temperature'];
        $s4= $row['rainfall'];
        $s5= $row['soil_type'];
        $s6= $row['major_producers'];
        $s7= $row['highest_producer'];
        $s8= $row['research_center'];
        $s9= $row['highest_producing_country'];
        $s10= $row['image'];



       
		// Replace column_to_display with the column you want the results from
				$output .= '<h2>'.$s.'</h2><br><img src=images/'.$s10.'><br>type:  '.$s1.'<br>varieties:  '.$s2;
			}
		}
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Search</title>
	</head>
	<body>
		<form method="POST" action="crop-search.php">
			<input type="text" name="q" placeholder="query">
			<input type="submit" name="search" value="Search">
		</form>
		<?php echo "$output"; 
		
		?>
	</body>
	<?php
	include ("footer.php");
	?>
</html>