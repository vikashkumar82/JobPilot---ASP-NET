<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyLogin.aspx.cs" Inherits="JobPilot.Company_Login.CompanyLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/StyleSheet1.css" rel="stylesheet" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>Company Login</title>
</head>
<body>
    <!---------------------------------------- logo----------------------------->
    <section class="bottom-navbar login-navbar">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="search-bar">
                        <div class="logo">
                            <a href="../index.aspx">
                                <img src="/Picture/logo.svg" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!---------------------------------------- logo----------------------------->

    <section class="login-main">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="login-details">
                        <p class="login-title">Don't have an account? <a href="CompanyRegister.aspx"><span style="color:blue">Create Account</span></a></p>
                    </div>
                    <form id="form1" runat="server">
                        <div class="login-page">
                            <div class="form-group">
                                <asp:TextBox ID="C_Email" runat="server" type="email" placeholder="Enter email" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="C_Password" runat="server" placeholder="Password" class="form-control" type="password"></asp:TextBox>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary" OnClick="btnLogin_Click" />
                            <p style="text-align: center">Or</p>
                            <button type="button" class="btn toggle_btn" data-bs-toggle="button"><span><i class="bi bi-google"></i></span>&nbsp;Google</button>
                            <button type="button" class="btn toggle_btn" data-bs-toggle="button"><span><i class="bi bi-linkedin"></i></span>&nbsp;LinkedIn</button>
                            <button type="button" class="btn toggle_btn" data-bs-toggle="button"><span><i class="bi bi-github"></i></span>&nbsp;GitHub</button>
                        </div>
                    </form>
                    <div class="loginCredentials">
                        <h6>Login Credentials</h6>
                        <div class="row">
                            <div class="col-md-6">
                                <button type="button" class="btn loginCredentials-btn" data-bs-toggle="button"><span style="color: blue"><b>Candidate Login</b></span></button>
                            </div>
                            <div class="col-md-6">
                                <button type="button" class="btn loginCredentials-btn" data-bs-toggle="button"><span style="color: blue"><b>Company Login</b></span></button>
                            </div>
                        </div>
                        <br />
                        <button type="button" class="btn loginCredentials-btn-admin" data-bs-toggle="button"><span style="color: blue"><b>Admin Login</b></span></button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="login-image">
                        <img src="../Picture/auth-img.png" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
