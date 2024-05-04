<%@ Page Title="" Language="C#" MasterPageFile="~/main-user.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JobPilot.profile3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-info">
        <div class="container right-side-dashboard">
            <div class="left-text">
                <h5>Hello,<asp:Label ID="user" runat="server" Text="Label"></asp:Label></h5>
                <p>Here are your daily activities & career opportunities</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="info-box">
                        <div class="info-data">
                            <h6 class="title_count"><asp:Label ID="lblJobApplied" runat="server" Text="Label"></asp:Label></h6>
                            <p>Job Applied</p>
                        </div>
                        <div class="info-icon">
                            <i class="bi bi-briefcase"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-box-middle">
                        <div class="info-data applied-jobs">
                            <h6 class="title_count"><asp:Label ID="lblBookmarked" runat="server" Text="0"></asp:Label></h6>
                            <p>Fevourite Jobs</p>
                        </div>
                        <div class="info-icon favorite">
                            <i class="bi bi-bookmark"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-box">
                        <div class="info-data">
                            <h6 class="title_count">100</h6>
                            <p>Job Alert</p>
                        </div>
                        <div class="info-icon alertJob">
                            <i class="bi bi-bell"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="recently-applied">
                <h6>Recently Applied</h6>
                <a href="https://mail.google.com/mail/u/0/#inbox">View All <i class="bi bi-arrow-right"></i></a>
            </div>
            <div class="job-card-table">

                <div class="row">
                    <div class="col-md-6">
                        <div class="job-card-content">
                            <p>Job</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="job-card-content">
                            <p>Date Applied</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="job-card-content">
                            <p>Status</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="job-card-content">
                            <p>Action</p>
                        </div>
                    </div>
                </div>
            </div>

            <asp:Repeater ID="allJobsRepeter" runat="server">
                <ItemTemplate>
                    <div class="job-card-table-content setHover">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="job-card-table-content-details">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="job-card-table-content-details-logo">
                                                <img src="Picture/PenTip.png" />
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="job-card-table-content-details-info">
                                                <p><%#Eval("CompanyName") %><p>
                                                   <p><%#Eval("JobLocation") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="job-card-table-content-date">
                                    <p><%#Eval("JobDeadline") %></p>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="job-card-table-content-status">
                                    <p>
                                        <asp:Label ID="companyStatusLabel" runat="server" Text="Label"></asp:Label></p>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="job-card-table-content-action">
                                    <a href='job-description.aspx?id=<%#Eval("Job_Id") %>' class="btn setHvrBtn">View Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
