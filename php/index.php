<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins:400,700,900');
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="css/home_page.css">
</head>
<body>
<?php
 session_start();
 include("config.php");
 if(!isset($_SESSION["login"]))
 {
    $uemail=null;
	$login_stats="Login";
    $page_slct="login_reg_page.php";
 }
else{
    $uemail=$_SESSION['email'];
    $login_stats="Logout";
    $page_slct="logout_process.php";
}
    ?>
 
    <div class="header">
        <nav>
            <h1 class="title">Event Management</h1>
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="#event-div">Events</a></li>
                <li><a href="about.html">About</a></li>
                <li><button type="submit" class="lgin btn"><a href=<?php echo $page_slct; ?>><?php echo"<p>$login_stats</p>";?></a></button></li>
            </ul>
        </nav>
    </div>
    
    <div class="slideshow">
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="https://i0.wp.com/ilassotickets.com/wp-content/uploads/2018/11/party-wallpaper-3172-3373-hd-wallpapers.jpg?fit=1920%2C1080&ssl=1" style="width:100%">
  <div class="text">" Party Hard "</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="https://i.pinimg.com/736x/5e/af/99/5eaf998aab12063db7b71a70eecfa2a2.jpg" style="width:100%">
  <div class="text">" Let's play hide and seek: I'll hide the clock, and let's seek a party to rave!"</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="https://i.pinimg.com/originals/12/d6/6d/12d66d1306c45be30b5ee4fde13522c7.jpg" style="width:100%">
  <div class="text">" Game ON "</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
</div> 
</div>
<div id="event-div">
<p class="eventtitle">All Events</p>
    <div class="container-event">
        
        <div class="event-list">

<?php
   
  $event_query = "SELECT * FROM events";
  $run_query1 = mysqli_query($conn,$event_query);
  
  if(mysqli_num_rows($run_query1) > 0){
    while($row = mysqli_fetch_array($run_query1)){
       $_SESSION['eventname']=htmlentities($row['event_name']);
?>
     <div class='event-tile'>
     <div class='event-name'>
     <img src='<?php echo htmlentities($row['img_link']);?>' >
     <h3 name='uname'><?php echo htmlentities($row['event_name']);?></h3>
     </div>
     <div class='layer'>
     <div class="details-div">
     <h3 class="eventh3"><?php echo htmlentities($row['event_name']);?></h3>
     <br>
         <p><?php echo htmlentities($row['event_details']);?></p>
         <div class="price">
         <p><?php echo "Price: ", htmlentities($row['event_price']);?></p>
         <p><?php echo "Date: ",htmlentities($row['event_date']);?></p>
         </div>
     </div>
         <a href='event_page.php?eventid=<?php echo htmlentities($row['event_id'])?>'><i class='bi bi-link-45deg'>Regiter</i></a>
     </div>
 </div>
<?php
  }
}
?> 
            </div>
        </div>
    </div>
</div>
<div class="regiteredevents">
    <div>
        <h1>Registered Events</h1>
        <?php
        if(is_null($uemail)==FALSE){
            $event_query = "SELECT * FROM subev_reg WHERE subev_reg_uemail='$uemail'";
            $run_query1 = mysqli_query($conn,$event_query);
  
            if(mysqli_num_rows($run_query1) > 0){
                 while($row = mysqli_fetch_array($run_query1)){
        ?>
         <div class="regnames">
            <p><?php echo htmlentities($row['subev_reg_eventname'])?>  :   <?php echo htmlentities($row['subev_name'])?></p>
            <p></p>
        </div>

        <?php
    }
    }
}else{
    ?>

    <p>No Events Reistered</p>

    <?php
    }
    ?>
    </div>

</div>
    <br>
    <div id="contact">
    <div class="container">
        <div class="row">
                <h1 class="sub-title">Teams Members</h1>
                <div class="contact-left">
                <p><i class="bi bi-envelope-fill"></i> Chiranth SH        IDNO:20191CSE0105</p>
                <p><i class="bi bi-telephone-fill"></i> Ashwini S Prabhu  IDNO:20191CSE0043</p>
                <p><i class="bi bi-telephone-fill"></i> A Teja Kiran      IDNO:20191CSE0002</p>
                <p><i class="bi bi-telephone-fill"></i>Ayyappa BK         IDNO:20191CSE0047</p>

            </div>
        </div>
    </div>

    <script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>
</body>
</html>