<%@ Page Title="" Language="C#" MasterPageFile="~/main-user.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="JobPilot.Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="setting-info">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-basic-tab" data-bs-toggle="tab" data-bs-target="#nav-basic" type="button" role="tab" aria-controls="nav-basic" aria-selected="true">Basic</button>
                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</button>
                <button class="nav-link" id="nav-experience-tab" data-bs-toggle="tab" data-bs-target="#nav-experience" type="button" role="tab" aria-controls="nav-experience" aria-selected="false">Experience & Education</button>
                <button class="nav-link" id="nav-social-tab" data-bs-toggle="tab" data-bs-target="#nav-social" type="button" role="tab" aria-controls="nav-social" aria-selected="false">Social Media</button>
                <button class="nav-link" id="nav-account-tab" data-bs-toggle="tab" data-bs-target="#nav-account" type="button" role="tab" aria-controls="nav-account" aria-selected="false">Account Setting</button>

            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-basic" role="tabpanel" aria-labelledby="nav-basic-tab" tabindex="0">
                <div class="row">
                    <div class="col-md-4">
                        <p></p>
                        <h6>Basic Information</h6>
                        <p>Profile Picture</p>
                        <div class="setting-profilePic">
                            <!--Image-->
                            <div>
                                <div class="mb-4 d-flex justify-content-center">
                                    <asp:Image ID="profilePic" runat="server" Height="300px" Width="300px" />

                                </div>
                                <asp:FileUpload ID="profilePicSelect" runat="server" class="btn btn-outline-secondary" />
                                <asp:Button ID="PicUpload" runat="server" Text="Upload" class="btn btn-primary" Width="319px" OnClick="PicUpload_Click" />

                            </div>
                            <!--Image end-->
                            <!--resume start-->
                            <div class="resume-section">
                                <h4>Your CV/Resume</h4>
                                <asp:FileUpload ID="resumeFile" runat="server" CssClass="form-control pt-2" ToolTip=".doc, .docx, .pdf extension only" />
                                <asp:Button ID="resumeupload" runat="server" Text="Upload Resume" CssClass="btn btn-primary" OnClick="resumeupload_Click" />
                                <asp:Button ID="download" runat="server" Text="Button" OnClick="download_Click" />
                            </div>
                            <!--resume end-->

                            <!--Avatar-->
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="setting-detials">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="user-details">
                                        <label for="validationDefault01" class="form-label">Full name</label>
                                        <asp:TextBox ID="user_FullName" runat="server" Class="form-control"></asp:TextBox>
                                        <label for="validationDefault01" class="form-label">Experience</label>
                                        <asp:TextBox ID="user_Experience" runat="server" class="form-control"></asp:TextBox>
                                        <label for="validationDefault01" class="form-label">Presonal Website</label>
                                        <asp:TextBox ID="user_Website" runat="server" Class="form-control"></asp:TextBox>
                                    </div>
                                    <p></p>
                                    <asp:Button ID="btn_BasicDetails" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="btn_BasicDetails_Click" />
                                </div>
                                <div class="col-md-6">
                                    <div class="user-details">
                                        <label for="validationDefault01" class="form-label">Professional Title/Tagline</label>
                                        <asp:TextBox ID="user_Tagline" runat="server" Class="form-control"></asp:TextBox>
                                        <label for="validationDefault01" class="form-label">Education Level</label>
                                        <asp:TextBox ID="user_Education" runat="server" class="form-control"></asp:TextBox>
                                        <label for="validationDefault01" class="form-label">Date Of Birth </label>
                                        <asp:TextBox ID="user_Dob" class="form-control" type="date" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
                <div class="row">
                    <div class="col-md-6">
                        <div class="profile-edit-Left">
                            <label for="validationDefault01" class="form-label">Gender</label>
                            <asp:DropDownList ID="user_Gender" runat="server" CssClass="form-control">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList><p></p>
                            <label for="validationDefault01" class="form-label">Profession</label>
                            <asp:TextBox ID="user_Profession" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-edit-right">
                            <label for="validationDefault01" class="form-label">Marital Status</label>
                            <asp:DropDownList ID="user_MaritalStatus" runat="server" CssClass="form-control">
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                            </asp:DropDownList><p></p>
                            <label for="validationDefault01" class="form-label">Your Availability</label>
                            <asp:DropDownList ID="user_Availability" runat="server" CssClass="form-control">
                                <asp:ListItem>Not Available</asp:ListItem>
                                <asp:ListItem>Available In</asp:ListItem>
                            </asp:DropDownList><p></p>
                        </div>
                    </div>
                </div>
                <label for="validationDefault01" class="form-label">Skills You Have</label>
                <asp:TextBox ID="user_Skills" runat="server" CssClass="form-control"></asp:TextBox><p></p>
                <label for="validationDefault01" class="form-label">Languages You Know</label>
                <asp:TextBox ID="user_Languages" runat="server" CssClass="form-control"></asp:TextBox><p></p>
                <label for="validationDefault01" class="form-label">biography</label>
                <asp:TextBox ID="user_Biography" runat="server" TextMode="MultiLine" Rows="6" class="form-control"></asp:TextBox><p></p>
                <asp:Button ID="btn_ProfileDetails" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="btn_ProfileDetails_Click" />
            </div>
            <div class="tab-pane fade" id="nav-experience" role="tabpanel" aria-labelledby="nav-experience-tab" tabindex="0">
                <div class="btn_modal">
                    <h3>Experience</h3>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                        Add Experience
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Add Experience</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <label for="validationDefault01" class="form-label">Company</label>
                                    <asp:TextBox ID="user_Company" runat="server" CssClass="form-control"></asp:TextBox>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="exeperience-details">
                                                <label for="validationDefault01" class="form-label">Department</label>
                                                <asp:TextBox ID="user_Department" runat="server" Class="form-control"></asp:TextBox>
                                                <label for="validationDefault01" class="form-label">Start Date </label>
                                                <asp:TextBox ID="user_ExpStartDate" class="form-control" type="date" runat="server"></asp:TextBox>
                                                <br />
                                                <asp:CheckBox ID="exp_CheckBox" runat="server" Text=" &nbsp; I am currently Working" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="exeperience-details">
                                                <label for="validationDefault01" class="form-label">Designation</label>
                                                <asp:TextBox ID="user_Designation" runat="server" CssClass="form-control"></asp:TextBox>
                                                <label for="validationDefault01" class="form-label">End Date </label>
                                                <asp:TextBox ID="user_ExpEndDate" class="form-control" type="date" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <label for="validationDefault01" class="form-label">Responsibility</label>
                                    <asp:TextBox ID="user_ExpResponsibility" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:Button ID="add_Experience" CssClass="btn btn-primary" runat="server" Text="Add Experience" OnClick="add_Experience_Click" /><p></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <td><strong>Company</strong></td>
                                        <td><strong>Department</strong></td>
                                        <td><strong>Designation</strong></td>
                                        <td><strong>Period</strong></td>
                                        <td><strong>Action</strong></td>
                                    </tr>
                                    <asp:Repeater ID="experienceRepeter" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("Company") %></td>
                                                <td><%#Eval("Department") %></td>
                                                <td><%#Eval("Designation") %></td>
                                                <td><%#Eval("StartDate") %><%#Eval("EndDate") %></td>
                                                <td>
                                                    <li class="nav-item dropdown">
                                                        <button class="btn_threeDot" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                            <i class="bi bi-three-dots-vertical"></i>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item" href="update-user-experience.aspx?exid=<%#Eval("ExpId") %>">Edit Experience</a></li>
                                                            <li><a class="dropdown-item" href="user-experience-delete.aspx?exid=<%#Eval("ExpId") %>">Delete</a></li>
                                                        </ul>
                                                    </li>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!--------------------------------------------------------------------------------------------------------------------------->

                <div class="btn_modal">

                    <h3>Add Education</h3>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Add Education
                                       
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add Education</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <label for="validationDefault01" class="form-label">Education Lavel</label>
                                    <asp:TextBox ID="user_EducationLavel" runat="server" Class="form-control"></asp:TextBox>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="exeperience-details">
                                                <label for="validationDefault01" class="form-label">Degree</label>
                                                <asp:TextBox ID="user_Degree" runat="server" Class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="exeperience-details">
                                                <label for="validationDefault01" class="form-label">Year</label>
                                                <asp:TextBox ID="user_EduYear" class="form-control" type="date" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <label for="validationDefault01" class="form-label">Notes</label>
                                    <asp:TextBox ID="user_Notes" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <asp:Button ID="btn_AddEducation" runat="server" Text="Add Education" class="btn btn-primary" OnClick="btn_AddEducation_Click" /><p></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <tr>
                                        <td><strong>Education Lavel</strong></td>
                                        <td><strong>Degree</strong></td>
                                        <td><strong>Year</strong></td>
                                        <td><strong>Action</strong></td>
                                    </tr>
                                    <asp:Repeater ID="educationRepeter" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("EducationLavel") %></td>
                                                <td><%#Eval("Degree") %></td>
                                                <td><%#Eval("Year") %></td>
                                                <td>
                                                    <li class="nav-item dropdown">
                                                        <button class="btn_threeDot" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                            <i class="bi bi-three-dots-vertical"></i>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item" href="user-update-education.aspx?eduid=<%# Eval("EduId")%>">Edit Education</a></li>
                                                            <li><a class="dropdown-item" href="user-delete-education.aspx?eduid=<%# Eval("EduId")%>">Delete</a></li>
                                                        </ul>
                                                    </li>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!----------------------------------------------------------------------------------------------------------->
            <div class="tab-pane fade" id="nav-social" role="tabpanel" aria-labelledby="nav-social-tab" tabindex="0">
                <h3>Social Media link</h3>
                <asp:TextBox ID="user_SocialMedia" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="btn_SocialMedia" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="btn_SocialMedia_Click" />
            </div>
            <p></p>
            <div class="tab-pane fade" id="nav-account" role="tabpanel" aria-labelledby="nav-account-tab" tabindex="0">
                <h3>Address</h3>
                <asp:TextBox ID="user_Address" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <div class="mapouter">
                    <div class="gmap_canvas">
                        <iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=600&amp;height=400&amp;hl=en&amp;q=chandigarh&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
                        <a href="https://connectionsgame.org/">Connections Puzzle</a>
                    </div>
                    <style>
                        .mapouter {
                            position: relative;
                            text-align: right;
                            width: 600px;
                            height: 400px;
                        }

                        .gmap_canvas {
                            overflow: hidden;
                            background: none !important;
                            width: 600px;
                            height: 400px;
                        }

                        .gmap_iframe {
                            width: 1800px !important;
                            height: 400px !important;
                        }
                    </style>
                </div>
                <p></p>
                <p></p>
                <div class="setting-contact-details">
                    <div class="row">
                        <h3>Your Contact Information</h3>
                        <div class="col-md-6">
                            <div class="setting-contact-details">
                                <label for="validationDefault01" class="form-label">Phone</label>
                                <asp:TextBox ID="user_Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                <label for="validationDefault01" class="form-label">Whatsapp number</label>
                                <asp:TextBox ID="user_Whatsapp" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="validationDefault01" class="form-label">Secondary Phone</label>
                            <asp:TextBox ID="user_AltNumber" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <asp:Label ID="userEmail" runat="server" Text="Email" CssClass="form-control"></asp:Label>
                        </div>
                        <p></p>
                        <asp:Button ID="btn_Contact" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="btn_Contact_Click" />
                    </div>
                </div>
                <div class="setting-password-change">
                    <div class="row">
                        <h4>Change Password</h4>
                        <div class="col-md-6">
                            <label for="validationDefault01" class="form-label">Current Password</label>
                            <asp:TextBox ID="currentPaasword" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <p></p>
                        <p></p>
                        <div class="col-md-6"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="validationDefault01" class="form-label">Change Password</label>
                            <asp:TextBox ID="newPassword" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <label for="validationDefault01" class="form-label">Confirm Password</label>
                            <asp:TextBox ID="cnfPassword" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <p></p>
                        <p></p>
                        <div runat="server" id="errorDiv" visible="false" class="alert alert-danger" role="alert" style="text-align: center">
                            <asp:Label ID="errorLbl" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div runat="server" id="successDiv" visible="false" class="alert alert-success" role="alert" style="text-align: center">
                            <asp:Label ID="successLbl" runat="server" Text="Label"></asp:Label>
                        </div>
                        <p></p>
                        <asp:Button ID="btn_changePassword" runat="server" Text="Save changes" class="btn btn-primary" OnClick="btn_changePassword_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
