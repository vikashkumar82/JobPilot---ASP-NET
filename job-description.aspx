<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="job-description.aspx.cs" Inherits="JobPilot.job_description" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/CSS/StyleSheet1.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                                <a class="nav-link" href="#">Companies</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#">DashBoard</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#">Job Alert</a>
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
                                <a href="profile.aspx">
                                    <img src="Picture/logo.svg" />
                                </a>
                            </div>
                            <div class="search-box">
                                <input class="form-control me-2" type="search" placeholder="Job Title, Keyword" aria-label="Search" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <ul class="register-btn">
                            <div class="d-flex right_side" role="search">
                                <li class="nav-item dropdown">
                                    <a class="nav-link " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-bell"></i>
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
                                <li class="dropdown img_dropdown">
                                    <a
                                        class=" d-flex align-items-center hidden-arrow"
                                        role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <asp:Image ID="Image1" runat="server" class="rounded-circle" Height="45" />
                                        <%--<img
                                  src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                                  class="rounded-circle"
                                  height="25"
                                  alt="Black and White Portrait of a Man"
                                  loading="lazy" />--%>
                                    </a>
                                    <ul
                                        class="dropdown-menu">
                                        <li>
                                            <a class="dropdown-item" href="profile.aspx">My profile</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="Setting.aspx">Settings</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="Logout.aspx">Logout</a>
                                        </li>
                                    </ul>
                                </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <%--Navigation end--%>
        <nav class="navbar bg-body-tertiary">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <h3>Job Details</h3>
                </a>
            </div>
        </nav>
        <div class="container company-description-hero">
            <div class="company-description-content">
                <div class="row">
                    <div class="col-md-8">
                        <div class="company-description-right">
                            <h3>
                                <asp:Label ID="lblJobTitle" runat="server" Text="Label"></asp:Label></h3>
                            <h5>
                                <asp:Label ID="lblLocations" runat="server" Text="Label"></asp:Label></h5>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="company-description-right">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="description-right-logo">
                                        <asp:ImageButton ID="Bookmark" runat="server" OnClick="Bookmark_Click" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <asp:Button ID="btn_Apply" runat="server" Class="btn btn-primary job-apply-toggle" Text="Apply" Visible="true" Width="240px" Height="60px" OnClick="btn_Apply_Click" />
                                            <asp:Button ID="applied" runat="server" Text="Applied" Visible="false" Class="btn btn-success job-apply-toggle" />
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Button ID="dltAppliedJob" runat="server" Text="Remove" class=" btn btn-danger" Visible="false" OnClick="dltAppliedJob_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="company-description-description">
                <div class="row">
                    <div class="col-md-7">
                        <div class="company-description-description-contentLeft">
                            <h2>Job Description</h2>
                            <p>
                                Title:
                        <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p>
                                Company:
                        <asp:Label ID="lblCompany" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p>
                                Location:
                        <asp:Label ID="lblLocation" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p>
                                Position Type:
                        <asp:Label ID="lblPosition" runat="server" Text="Label"></asp:Label>
                            </p>
                            <p>
                                <br />
                                <asp:Literal ID="literaldescription" runat="server"></asp:Literal>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="company-description-description-contentRight">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="salary-description-contentLeft">
                                        <p>
                                            <strong>Salary<br />
                                                Competitive</strong>
                                        </p>
                                        <asp:Label ID="lblSalary" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="salary-description-contentLeft left-description-card">
                                        <div class="salary-description-contentLeft-logo">
                                            <i class="bi bi-briefcase"></i>
                                        </div>
                                        <p><strong>Remote Job</strong> </p>
                                        <asp:Label ID="lblJobType" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="company-description-description-contentRight-jobBenifits">
                            <h5>Job Benifits</h5>
                            <asp:Label ID="lblBenifits" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="company-description-description-contentRight-jobOverView">
                            <h3>Job Overview</h3>
                            <div class="jobOverView-content">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-calendar"></i>
                                            </div>
                                            <p>JOB POSTED:</p>
                                            <asp:Label ID="lblJobPosted" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-stopwatch"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB EXPIRE:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblJobExpire" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-briefcase"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB TYPE:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblJobtypess" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobOverView-content">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-person-circle"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB POSTED:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblJobeRole" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-mortarboard"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB EXPIRE:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblEducation" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-journal-text"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB TYPE:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblExperience" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobOverView-content">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="contentRight-jobOverView-section">
                                            <div class="jobOverView-section-logo">
                                                <i class="bi bi-people"></i>
                                            </div>
                                            <p>
                                                <span style="color: grey;">JOB POSTED:</span>
                                                <br />
                                                <strong style="color: #4d4d4c">
                                                    <asp:Label ID="lblVacancies" runat="server" Text="Label"></asp:Label></strong>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    </form>
</body>
</html>
