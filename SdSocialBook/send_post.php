<?php  
include 'inc/connection.inc.php'; 

$post = $_POST['post'];

if($post != ""){
	date_default_timezone_set('Asia/Dhaka');
    $time_added=date("H:i:s");
	$date_added = date("Y-m-d");
	$added_by = "test123";
	$user_posted_to = "test123";

	$sqlCommand = "INSERT INTO posts VALUES('','$post','$date_added','$added_by','$user_posted_to','$time_added')";
	$query = mysql_query($sqlCommand) or die(mysql_error());
}
else{
	echo "You must enter something before you can send it!";
}

?>