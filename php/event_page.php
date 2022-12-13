<!DOCTYPE html>
<html lang="en">
  <head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="css/event_page.css" />
  </head>
  <body>

  <?php
  session_start();
  include("config.php");

  if(!isset($_SESSION["login"])){
    header("location:login_reg_page.php");
  }else{
  $event_id=$_GET['eventid'];
  $uemail=$_SESSION['email'];
   $event_query = "SELECT * FROM events where event_id='$event_id'";
   $run_query1 = mysqli_query($conn,$event_query);
   
   if(mysqli_num_rows($run_query1) > 0){
     while($row = mysqli_fetch_array($run_query1)){
        $event_name=htmlentities($row['event_name']);
  ?>
  
    <h1> EVENTS / ಕಾರ್ಯಕ್ರಮಗಳು / आयोजन</h1>
    <div class="eventname">
    <h1><?php echo htmlentities($row['event_name']);?></h1>
    </div>
    <div class="card-grid">
    <div class="cardlist">
<?php
$event_query = "SELECT * FROM $event_name";
  $run_query1 = mysqli_query($conn,$event_query);
  $event_query2 = "SELECT * FROM subev_reg WHERE subev_reg_uemail='$uemail'";

  if(mysqli_num_rows($run_query1) > 0){
    while($row = mysqli_fetch_array($run_query1)){
      $run_query2 = mysqli_query($conn,$event_query2);
      $reg_btn_sts="Register";
        while($row1 = mysqli_fetch_array($run_query2)){
          if(htmlentities($row1['subev_name'])==htmlentities($row['subev_name'])){
            $reg_btn_sts="Regitsered";
          }
        }
        
?>
    <div class="card">
      <div class="imgbox">
        <img src="<?php echo htmlentities($row['img_link'])?>"/>
        <div class="book-tile">
            <p>Price : <?php echo htmlentities($row['subev_price']);?></p>
            <button class="btn" ><a href="reg_chcek.php?subeventname=<?php echo htmlentities($row['subev_name'])?>&eventname=<?php echo $event_name?>"><?php echo "<p>$reg_btn_sts</p>";?></a></button>
            
        </div>
      </div>

      <div class="content">
        <h2><?php echo htmlentities($row['subev_name']);?></h2>
        <p>
        <?php echo htmlentities($row['subev_details']);?>
        </p>
        <p class="datecard">
        <?php echo htmlentities($row['subev_date']);?>
        </p>
      </div>
    </div>
<?php
    $reg_btn_sts="Register";
  }
}
?>
 </div>
 </div>
<?php
}
  }
}
    ?>
  </body>
</html>