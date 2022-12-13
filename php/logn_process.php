<?php
    
session_start ();
include("config.php"); 

if(isset($_REQUEST['login']))
{
$a = $_REQUEST['uemail'];
$b = $_REQUEST['upassword'];

$res = mysqli_query($conn,"select * from users where user_email='$a'and user_password='$b'");
$result=mysqli_fetch_array($res);
if($result)
{
	$_SESSION["login"]="1";
	$_SESSION["email"]=$a;
	header("location:index.php");
}
else	
{
	?>
<script>
	

		alert("Please Provide proper Credentials");
		window.location="login_reg_page.php";

</script>
<?php
}
}

?>