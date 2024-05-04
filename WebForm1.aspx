<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JobPilot.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="/CSS/StyleSheet1.css">
    <title>JobPilot</title>


</head>
<body>

    <header class="top-navbar">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


    </header>









































    <form id="form1" runat="server">
        <div>
            
        <!------------------------------Navigation Bar Starts---------------------------->
        <nav class="navbar bg-body-tertiary container">
            <div class="container-fluid">
                <a class="navbar-brand"><h3>JobPilot</h3></a>
                <input class="form-control" type="search" placeholder="Search"
                    aria-label="Search" style="width: 500px; text-align: left;">
                <a href> <i class="material-icons" style="font-size:36px">notifications_active</i></a>
                <img src="/Picture/profile.png" class="img-circle"
                    alt="Cinque Terre" width="50" height="50" />
            </div>
        </nav><br /><br>

        <!------------------------------Navigation Bar ends---------------------------->
              <!------------------------------content Starts---------------------------->
        <div class="container">
            <div>
                <div class="col-md-6" style=" float: left;">
                    <h1>Discover Your Perfect Job: Matching Your Interests and
                        Skills</h1><br><br>
                    <h6 style="color: #c2c3c4;">Unlock Your Potential, Embrace
                        Your Future.</h6><br><br>
                    <div class="jobSearchBox">
                        <div class="jobInput">
                            <input type="text" placeholder="Job Title/Keyword">
                            <input type="text" placeholder="Enter Location">
                            <button class="btn btn-primary">Find Job Now</button>
                        </div>
                    </div><br>
                    <span style="color: #4c4c4d;">Suggestions</span>
                    <a href="#"> Law/Legal , </a>
                    <a href="#"> IT & Telecommunication , </a>
                    <a href="#"> Garments/Textile , </a>
                    <a href="#"> Engineer/Architects </a>
                </div>
                <div class="col-md-6" style="float: right;">
                    <img
                        src="/Picture/study.jpg"
                        alt class="studyImage">
                </div>
            </div>
        </div><br><br><br><br><br><br>
        <!------------------------------content ends---------------------------->
        </div>
         <div>
     <div class="row" >
         <div class="col-md-3" style="border:1px solid red;">hello</div>
         <div class="col-md-3" float="left">hello</div>
         <div class="col-md-3" float="left">hello</div>
         <div class="col-md-3" float="left" >hello</div>
     </div>
 </div>
    </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
