<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JobPilot.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/CSS/StyleSheet1.css" />


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" />
    <script src="https://kit.fontawesome.com/8e1d3b8195.js" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <%--Navigation Start--%>
    <header class="top-navbar">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Find Job</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Candidates</a>

                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Companies</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Blog</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Pricing</a>
                        </li>

                    </ul>

                    <div class="d-flex right-side-nav">
                        <li class="nav-item">
                            <a href="tel:123456789">+91-1234567890</a>
                        </li>


                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Languages
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Currency
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Country
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                    </div>
                </div>
            </div>
        </nav>

    </header>

    <%--Navigation end--%>
    <%--Navigation starts--%>

    <section class="bottom-navbar">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="search-bar">
                        <div class="logo">
                            <a href="index.aspx">
                                <img src="/Picture/logo.svg" />
                            </a>
                        </div>
                        <div class="search-box">
                            <form class="search">

                                <input class="form-control me-2" type="search" placeholder="Job Title, Keyword" aria-label="Search" />

                                <i class="bi bi-search"></i>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="register-btn">
                        <form id="form1" runat="server">
                            <asp:Button ID="Button1" class="theme-btn" runat="server" Text="Sign In" PostBackUrl="~/Login.aspx" />
                            <asp:Button ID="Button2" class="theme-btn-dark" runat="server" Text="Post Job" PostBackUrl="~/Company_Login/CompanyLogin.aspx" />
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </section>



    <%--Navigation end--%>
    <%--content Start--%>
    <section class="hero">
        <div class="container content">
            <div class="row">
                <div class="col-md-7">
                    <div class="job-searchBar">
                        <h1>Discover Your Perfect Job: Matching Your Interests and Skills</h1>

                        <p>Unlock Your Potential, Embrace Your Future.</p>
                        <div class="searchJob-hero">
                            <div class="searchJob-logo">
                                <input type="text" placeholder="Job Title,Keyword" />

                                <i class="bi bi-search"></i>
                            </div>

                            <div class="searchJob-box">
                                <input type="text" placeholder="Enter Location" />
                                <i class="bi bi-geo-alt"></i>

                            </div>

                            <div class="searchJob-btn">
                                <button class="theme-btn-dark">Find Job Now</button>
                            </div>
                        </div>
                        <p>
                            <span style="color: #b6b6b8">Suggestion:</span><span style="color: #4c4c4d">Driving/Motor Technician , Garments/Textile , IT & Telecommunication ,<br />
                                Medical/Pharma</span>
                        </p>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="hero-image">
                        <img src="/Picture/hero-img.png" />
                    </div>
                </div>
            </div>
        </div>
        <div class="container index-counter">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box-counter">
                                <div class="box-icon-counter">
                                    <i class="bi bi-briefcase"></i>
                                </div>
                                <div class="box-detail">
                                    <h5>Earnings</h5>
                                    <p>₹ 64235.00</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box-counter">
                                <div class="box-icon-counter">
                                    <i class="bi bi-buildings"></i>
                                </div>
                                <div class="box-detail">
                                    <h5>Active Jobs</h5>
                                    <p>₹ 64235.00</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box-counter">
                                <div class="box-icon-counter">
                                    <i class="bi bi-people"></i>
                                </div>
                                <div class="box-detail">
                                    <h5>Total Companies</h5>
                                    <p>₹ 64235.00</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box-counter">
                                <div class="box-icon-counter">
                                    <i class="bi bi-briefcase"></i>
                                </div>
                                <div class="box-detail">
                                    <h5>Total Verified Users</h5>
                                    <p>₹ 64235.00</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container index-chooseus">
            <h2 style="text-align: center">Why Choose Us</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="chooseUs-widget-box">
                        <div class="chooseUs-widget-icon">
                            <i class="fa-solid fa-handshake" style="color: #1569f9;"></i>
                        </div>
                        <h6>Why Choose Us</h6>
                        <p>Whether you choose to post your jobs directly or have them indexed automatically, our pricing model is highly competitive and cost-effective.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="chooseUs-widget-box">
                        <div class="chooseUs-widget-icon">
                            <i class="fa-solid fa-check" style="color: #0a5ef0;"></i>
                        </div>
                        <h6>Easy to Use</h6>
                        <p>We have created a streamlined user-interface so you can easily manage your jobs and candidates.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="chooseUs-widget-box">
                        <div class="chooseUs-widget-icon">
                            <i class="fa-regular fa-user" style="color: #095ef1;"></i>
                        </div>
                        <h6>Quality Candidate</h6>
                        <p>Irrespective of your organization’s size, we have a large pool of candidates with diverse skill sets and experience levels.</p>
                    </div>
                </div>
            </div>
            <p style="text-align: center">Have Question?</p>
            <a href="#" style="text-align: center">Contact Us</a>
        </div>
        <div class="index-most">
            <div class="container index-most-vacancies">
                <h2>Most Popular Vacancies</h2>
                <div class="row">
                    <div class="col-md-3">
                        <div class="index-most-vacancies-jobs">
                            <p>
                                <strong>Director</strong><br />
                                <span style="color: #6e6e6e">238 Open Positions</span>
                            </p>
                            <p>
                                <strong>Executive</strong><br />
                                <span style="color: #6e6e6e">196 Open Positions</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="index-most-vacancies-jobs">
                            <p>
                                <strong>Administrator</strong><br />
                                <span style="color: #6e6e6e">225 Open Positions</span>
                            </p>
                            <p>
                                <strong>Manager</strong><br />
                                <span style="color: #6e6e6e">195 Open Positions</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="index-most-vacancies-jobs">
                            <p>
                                <strong>Manager</strong><br />
                                <span style="color: #6e6e6e">219 Open Positions</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="index-most-vacancies-jobs">
                            <p>
                                <strong>Leader</strong>
                                <br />
                                <span style="color: #6e6e6e">203 Open Positions</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="index-popular-category">
            <div class="container">
                <h3>Popular Category</h3>
                <br />
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-regular fa-hospital" style="color: #175ed9;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Hospitality/ Travel/ Tourism</strong>
                                            <br />
                                            <span style="color: #6e6e6e">151 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-shirt" style="color: #0a60f5;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Garments/Textile</strong>
                                            <br />
                                            <span style="color: #6e6e6e">150 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-notes-medical" style="color: #135bd8;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Medical/Pharma</strong>
                                            <br />
                                            <span style="color: #6e6e6e">150 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-pencil" style="color: #185ed8;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Design/Creative</strong>
                                            <br />
                                            <span style="color: #6e6e6e">1433 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-car" style="color: #145fe1;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Driving/Motor Technician</strong>
                                            <br />
                                            <span style="color: #6e6e6e">142 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-gavel" style="color: #165eda;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Law/Legal</strong>
                                            <br />
                                            <span style="color: #6e6e6e">140 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-desktop" style="color: #0e58d8;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>IT & Telecommunication</strong>
                                            <br />
                                            <span style="color: #6e6e6e">138 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="category-widget">
                                    <div class="category-widget-icon">
                                        <i class="fa-solid fa-ellipsis-vertical" style="color: #1b5dd0;"></i>
                                    </div>
                                    <div class="box-detail">
                                        <p>
                                            <strong>Others</strong>
                                            <br />
                                            <span style="color: #6e6e6e">137 Open Positions</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="job-pilot-workingprocess">
            <div class="container">
                <h2><span style="color: blue; text-align: center">JobPilot</span>Working Process</h2>
                <div class="row">
                    <div class="col-md-3">
                        <div class="workingProcess-widget-box">
                            <div class="workingProcess-widget-icon">
                                <i class="bi bi-person-plus"></i>
                            </div>
                            <h6>Why Choose Us</h6>
                            <p>Whether you choose to post your jobs directly or have them indexed automatically, our pricing model is highly competitive and cost-effective.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="workingProcess-widget-box">
                            <div class="workingProcess-widget-icon">
                                <i class="bi bi-cloud-upload"></i>
                            </div>
                            <h6>Why Choose Us</h6>
                            <p>Whether you choose to post your jobs directly or have them indexed automatically, our pricing model is highly competitive and cost-effective.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="workingProcess-widget-box">
                            <div class="workingProcess-widget-icon">
                                <i class="bi bi-zoom-in"></i>
                            </div>
                            <h6>Why Choose Us</h6>
                            <p>Whether you choose to post your jobs directly or have them indexed automatically, our pricing model is highly competitive and cost-effective.</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="workingProcess-widget-box">
                            <div class="workingProcess-widget-icon">
                                <i class="bi bi-patch-check"></i>
                            </div>
                            <h6>Why Choose Us</h6>
                            <p>Whether you choose to post your jobs directly or have them indexed automatically, our pricing model is highly competitive and cost-effective.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%--content end--%>
    <!------------------------------------------------------------footer--------------------------------------->
    <!-- Footer -->
    <footer class="text-center text-lg-start text-white bg-dark ">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
            <!-- Left -->
            <div class="me-5 d-none d-lg-block">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="me-4 text-reset">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <img src="Picture/logowhite.png" />
                        </h6>
                        <h6><span style="color: #979997">Call Now:</span> <strong>319-555-0115</strong><p></p>
                        </h6>
                        <p style="color: #979997">
                            Discover tailored opportunities for job seekers and top talent for employers
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h5 class="text-uppercase  mb-4">Company
                        </h5>
                        <p style="color: #979997">
                            <a href="#" class="text-reset">About</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Contact</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">blog</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h5 class="text-uppercase  mb-4">Candidate
                        </h5>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Browse Jobs</a>
                        </p>
                        <p style="color: #979997">
                            <a href="profile.aspx" class="text-reset">Candidate Dashboard</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Saved job</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h5 class="text-uppercase  mb-4">Company
                        </h5>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Post a job</a>
                        </p>
                        <p style="color: #979997">
                            <a href="profile.aspx" class="text-reset">Browse Companies</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Companies Dashboard</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Application</a>
                        </p>

                    </div>
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h5 class="text-uppercase  mb-4">Support
                        </h5>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">FAQ</a>
                        </p>
                        <p style="color: #979997">
                            <a href="profile.aspx" class="text-reset">Privacy & Policy</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Terms & Conditions</a>
                        </p>
                        <p style="color: #979997">
                            <a href="#!" class="text-reset">Refund & Policy</a>
                        </p>

                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
           © Jobpilot 2023  | All Rights Reserved
    <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
        <!-- Copyright -->
    </footer>
   
    <!------------------------------------------------------------footer--------------------------------------->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>


