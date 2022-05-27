<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" type="image/png" href="images/LogoSample_ByTailorBrands.jpg">
    
    <title>About Us</title>
</head>

<body>
  <style>
    .alert {
  padding: 20px;
  background-color: #ff3333;
  color: white;
  border-radius:5px;
}
.exclamation {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}
     .logo
    {
    width: 45px;
    height: 45px;
    border-radius: 50%;
    overflow: hidden;
    margin-top: auto;
    float:left;
    margin:0;
    }
  

/* Style inputs */
label
{
    font-family: cursive;
    font-weight: bold;
    font-size: 17px;
}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  border-radius: 3px;
  box-shadow: 0 4px 8px 0 rgba(58, 26, 26, 0.2);
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
  border-radius: 3px;
  box-shadow: 0 4px 8px 0 rgba(58, 26, 26, 0.2);
}

input[type=text]:hover
{
    border: 1px solid crimson;
}
 textarea:hover
{
    border: 1px solid crimson;
}
input[type=submit]:hover {
  background-color: crimson;
}

/* Style the container/contact section */
#content {
  border-radius: 5px;
  background: #fff;
  padding: 10px;

}
#content p
{
    font-family: cursive;
    font-size: 20px;
    text-decoration: none;
}
/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
  background: #fff;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
      </style>    

    <!--content-->
   <div class="navscroll">
    <nav>
        <div >
            <img class="logo" src="images/LogoSample_ByTailorBrands.jpg">
          </div>
          <div class="title">
            <h4>Glamour Salon n Spa</h4> 
          </div>
      
      <ul class="navlinks">
    
        <li><a href="index.php">Home</a></li>
        <li><a href="service.php">Services</a></li>
        <li><a href="about.php">About Us</a></li>
        <li><a href="contactus.php">Contact Us</a></li>
        <li><a href="signin.php">Book Now</a></li>
      </ul>
      <div class="mobile">
          <div class="line1"></div>
          <div class="line2"></div>
          <div class="line3"></div>
      </div>
  </nav>
  </div>
  <script src="carproj.js"></script>
   
  <!--main body content-->
    <div id="bodycontent" style="background: #fff;">
  
    
    <div id="content">
        <div style="text-align:center">
            <h2 style="font-size: 50px;">Contact Us</h2>
            <p>Swing by for a makeover, or leave us a message!</p>
          </div>
        <div class="contact">
            <div class="row">
              <div class="column" >
                <img src="images/Screenshot 2022-02-25 152444.png" style="width:80%"> <br> <br>
                <a href="" ><img src="images/icons8-facebook-48.png" alt=""></a>&nbsp; &nbsp;
                <a href="" ><img src="images/icons8-instagram-48.png" alt=""></a>&nbsp; &nbsp;
                <a href="" ><img src="images/icons8-whatsapp-48.png" alt=""></a>

              </div>
              <div class="column">
                <form action="config.php" method="post">
                <?php if (isset ($_GET['error']))
                {?>
              <div class="alert ">
                <span class="exclamation" >&#33;</span>
                <strong><?=$_GET['error']?></strong>
              </div>  
                <?php } ?>  
                  <label for="fname">First Name</label>
                  <input type="text"  name="firstname" placeholder="Your name..">
                  <label for="subject">Subject</label>
                  <textarea  name="subject" placeholder="Write something.." style="height:170px"></textarea>
                  <input type="submit" value="Submit" name="submit">
                </form>
              </div>
            </div>
          </div>

    </div>
</div>


</div>
  
<script>
 
  var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
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
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>
  </script>

    <!--Footer-->
    <div id="footer">
        <div class="bottom">
            <center>
              <p style="letter-spacing: 1.8px; font-size: 17px;font-weight: 300;color: #fff;">
                  &copy; Glamour Hotel & Spa 2022 All Rights Reserved.
              </p>
            </center>
          </div>
    </div>
    
</body>
</html>