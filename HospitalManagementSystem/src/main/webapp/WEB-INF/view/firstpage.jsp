<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hospital Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
.carousel .item {
  width: 100%;
  height: 500px;
}

.item img {
    position: absolute;
    top: 0;
    left: 0;
    min-height: 300px;
}
</style>


<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3">
    <div class="container-fluid">
        <a href="#" class="navbar-brand mr-3">Hospital Management System</a>
        <button type="button" class="navbar-toggler" ><!-- data-toggle="collapse" data-target="#navbarCollapse" -->
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
                <a href="#" class="nav-item nav-link active">Home</a>
                <a href="/toEnroll" class="nav-item nav-link active">Enroll Patient</a>
                <a href="/createPhysician" class="nav-item nav-link active">Enroll Physician</a>
                <a href="/getPhysiciandetails" class="nav-item nav-link active">Search Physician</a>
                <a href="/toaddDiagnosis" class="nav-item nav-link active">Add Diagnosis</a>
                <a href="/getpatientid" class="nav-item nav-link active">View Patient History</a>
            </div>
        </div>
    </div>    
</nav>

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
  
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#myCarousel" data-slide-to="4"></li>
<li data-target="#myCarousel" data-slide-to="5"></li>
<li data-target="#myCarousel" data-slide-to="6"></li>
<li data-target="#myCarousel" data-slide-to="7"></li>
<li data-target="#myCarousel" data-slide-to="8"></li>
<li data-target="#myCarousel" data-slide-to="9"></li>
<li data-target="#myCarousel" data-slide-to="10"></li>
<li data-target="#myCarousel" data-slide-to="11"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="Images/1.jpg" alt="first slide" style="width:100%;">    
        </div>

      <div class="item">
        <img src="Images/2.jpg" alt="first slide" style="width:100%;">
        </div>
   
      <div class="item">
        <img src="Images/3.jpg" alt="first slide" style="width:100%;">
       
        </div>
      <div class="item">
        <img src="Images/4.jpg" alt="first slide" style="width:100%;">
       
        </div>
 
   
      <div class="item">
        <img src="Images/5.jpg" alt="first slide" style="width:100%;">
       
        </div>
   
      <div class="item">
        <img src="Images/6.jpg" alt="first slide" style="width:100%;">
       
        </div>

   
      <div class="item">
        <img src="Images/7.jpg" alt="first slide" style="width:100%;">
       
        </div>

   
      <div class="item">
        <img src="Images/8.jpg" alt="first slide" style="width:100%;">
       
        </div>
   
      <div class="item">
        <img src="Images/9.jpg" alt="first slide" style="width:100%;">
       
        </div>
   
      <div class="item">
        <img src="Images/10.jpg" alt="first slide" style="width:100%;">
       
        </div>
   
      <div class="item">
        <img src="Images/11.jpg" alt="first slide" style="width:100%;">
       
        </div>
</div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>     