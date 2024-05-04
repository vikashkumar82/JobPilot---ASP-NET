<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyRegister.aspx.cs" Inherits="JobPilot.Company_Login.CompanyRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/StyleSheet1.css" rel="stylesheet" />

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>CompanyRegister</title>
</head>
<body>
    <!---------------------------------------- logo----------------------------->
 <section class="bottom-navbar login-navbar">
     <div class="container">
         <div class="row">
             <div class="col-md-8">
                 <div class="search-bar">
                     <div class="logo">
                         <a href="index.aspx">
                             <img src="/Picture/logo.svg" />
                         </a>
                     </div>

                 </div>
             </div>

         </div>
     </div>

 </section>


 <!---------------------------------------- logo End----------------------------->




 <section class="login-main">
     <div class="container">
         <div class="row">
             <div class="col-md-6">
                 <div class="login-details">
                     <h3>Create Account</h3>
                     <p class="login-title">Already have an account <a href="CompanyLogin.aspx"><span style="color:blue">Log In</span></a></p>
                 </div>



                 <form id="form1" runat="server">
                     <div class="form-group">
                         <asp:TextBox ID="C_Name" runat="server" placeholder="Enter Full Name" class="form-control"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="C_Email" runat="server" type="email" placeholder="Enter email" class="form-control"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <asp:TextBox ID="C_Password" runat="server" placeholder="Enter your Password" class="form-control" type="password"></asp:TextBox>
                     </div>

                     <asp:Button ID="btnRegister" runat="server" Text="Create Account" class="btn btn-primary" OnClick="btnRegister_Click" />
                 </form>

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
