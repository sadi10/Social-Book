<?php  
include ("./inc/header.inc.php");

if($username){

}
else{
	die ("You must be logged in to view this!");
}
?>

<div class="messege" style=" width: 560px; height: 80px; float: top;margin-top: 5px;">
	<form action="#" method="post">
            <?php
                
                 $sql="SELECT username FROM users where username<>'$username'";
				 $result=mysqli_query($conn,$sql);
                 $option = '';
				 if (! $result){
                     throw new My_Db_Exception('Database error: ' . mysql_error());
                 }
                 while($row = mysqli_fetch_assoc($result))
                 {
                   $option .= '<option value = "'.$row['username'].'">'.$row['username'].'</option>';
                 }
                ?>
          
           
           
           <select id="post" name="send_to" rows="1" cols="79" placeholder="Send To..."> 
           <?php echo $option; ?>
           </select>
           
           
           
	       
           
		<textarea id="post" name="messege" rows="3" cols="79" placeholder="Write Something..."></textarea>
		<input type="submit" name="sendmsg" value="Send" style="background-color: #DCE5EE; float: right; border: 1px solid #666; color:#666;height:70px; width: 65px;margin-top: 0px;" />
	</form>
</div>

<br/>
<br/>

<?php
//send messege

$sendmsg=@$_POST['sendmsg'];
$send_to=@$_POST["send_to"];
$messege =strip_tags(@$_POST['messege']);
date_default_timezone_set('Asia/Dhaka');
$dt=date("Y-m-d");
$tm=date("H:i:s");

if($sendmsg){
	if($messege!="" && $send_to!=""){
	$sql = "INSERT INTO messege
			VALUES ('','$send_to','$username','$messege','$dt','$tm')";

			$result=mysqli_query($conn,$sql);
	}
	else{
		echo "You should write msg or username first!";
	}
	$send_to="";
	$sendmsg=0;
}


//retrieve messege from database

	$sql = "SELECT * FROM messege order by id DESC";
       
   	$result=mysqli_query($conn,$sql);

	while($row=mysqli_fetch_assoc($result)){
		$id = $row['id'];
		$send_to = $row['send_to'];
		$send_from = $row['send_from'];		
		$messege = $row['msg'];
		$dt = $row['send_date'];
        $tm=$row['m_time'];
		$tm2=date("g:i A", strtotime($tm));
		if($username==$send_from){
			echo "<div class='msge' style='font-weight: 800; color: #000; border-bottom: 1px solid #E2E2E2;'><h4> ME -> $send_to </h4><h1>$messege</h1> <h3>Date: $dt </br> Time: $tm2 <h3/></div><br />";
		}
		else if($username==$send_to){
			echo "<div class='msge' style='font-weight: 800; color: #000; border-bottom: 1px solid #E2E2E2;'><h4>$send_from</h4><h1>$messege</h1> <h3>Date: $dt </br> Time: $tm2 <h3/></div><br />";
		}
	}


?>

