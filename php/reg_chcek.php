<?php 
session_start ();
include("config.php"); 

if(!isset($_SESSION["login"])){
	header("location:logn_process.php");
}
else{    
    $subevent_name=$_GET['subeventname'];
    $event_name=$_GET['eventname'];
    $uemail=$_SESSION['email'];
    $uname="abcd";
    $sql = "INSERT INTO subev_reg (subev_reg_eventname, subev_name, subev_reg_uname,subev_reg_uemail ) VALUES ('$event_name', '$subevent_name','$uname','$uemail')";
if(mysqli_query($conn, $sql)){
    echo "Records inserted successfully.";
    header("location:index.php");
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
}
?>