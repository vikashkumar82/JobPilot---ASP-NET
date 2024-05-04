<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogging.aspx.cs" Inherits="JobPilot.Admin__Login.AdminLogging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/StyleSheet1.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section class="AdminLogging-hero">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="AdminLogging-Left">
                            <div class="AdminLogging-Logo">
                                <img src="../Picture/logo.svg" />
                            </div>
                            <p style="text-align:center;color:dimgray">Sign In To Start Your Session</p>
                            <div class="AdminLogging-TextBox">
                                <asp:TextBox ID="adminEmail" runat="server" CssClass="form-control" class="adminInput"></asp:TextBox><br />
                                <asp:TextBox ID="adminPassword" runat="server" CssClass="form-control" class="adminInput"></asp:TextBox>
                            </div>
                            <asp:CheckBox ID="CheckBox1" runat="server" /><span>&nbsp;Remmember Me</span>
                            <div class="AdminLogging-Loggin">
                                <asp:Button ID="Button1" runat="server" Text="Sigh In" />
                            </div>
                            <div class="AdminLogging-Credintials">
                                <p style="color:dimgray;text-align:center">Login as Company or Candidate</p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <asp:Button ID="Button2" runat="server" Text="Company Logging" Class="AdminLogging-CredintialsBTN" />
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Button ID="Button3" runat="server" Text="Candidate Logging" Class="AdminLogging-CredintialsBTN"/>
                                    </div>
                                </div>
                            </div>
                            <p style="color:dimgray;text-align:center">“ Happiness is not something readymade. It comes from your own actions. ” — Dalai Lama</p>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="AdminLogging-Right">
                            <div class=" AdminLogging-Banner">
                                <img src="../Picture/scenery.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
