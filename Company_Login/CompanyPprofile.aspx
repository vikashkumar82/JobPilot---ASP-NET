<%@ Page Title="" Language="C#" MasterPageFile="~/main-company.Master" AutoEventWireup="true" CodeBehind="CompanyPprofile.aspx.cs" Inherits="JobPilot.Company_Login.CompanyPprofile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="profile-info">
        <div class="container right-side-dashboard">
            <div class="left-text">
                <h5>Hello, Company
                     <asp:Label ID="companyName" runat="server" Text="Label"></asp:Label></h5>
                <p>Here are your daily activities & career opportunities</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="info-box">
                        <div class="info-data">
                            <h6 class="title_count"><asp:Label ID="lblOpenJob" runat="server" Text="Label"></asp:Label></h6>
                            <p>Open Job</p>
                        </div>
                        <div class="info-icon">
                            <i class="bi bi-briefcase"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="info-box-middle">
                        <div class="info-data applied-jobs">
                            <h6 class="title_count">5</h6>
                            <p>Saved Candidate</p>
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
                            <p>Pending Jobs</p>
                        </div>
                        <div class="info-icon alertJob">
                            <i class="bi bi-bell"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pricing-hero">
                <div class="row">
                    <h5>Pricing Plan - Feature Remaining</h5>
                    <div class="col-md-3">
                        <div class="active-job-card">
                            <ul>
                                <li><i class="bi bi-check2-all"></i><span>20</span></li>
                            </ul>
                            <p>Active Job</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="active-job-card">
                            <ul>
                                <li><i class="bi bi-lightning-charge"></i><span>4</span></li>
                            </ul>
                            <p>Highlight Jobs</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="active-job-card">
                            <ul>
                                <li><i class="bi bi-arrow-up-circle"></i><span>8</span></li>
                            </ul>
                            <p>Featured Job</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="active-job-card">
                            <ul>
                                <li><i class="bi bi-people"></i><span>20</span></li>
                            </ul>
                            <p>Profile View</p>
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
                    <div class="col-md-4">
                        <div class="job-card-content">
                            <p>Job</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="job-card-content">
                            <p>Status</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="job-card-content">
                            <p>Application</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="job-card-content">
                            <p>Action</p>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Repeater ID="allJobsRepeter" runat="server">
                <ItemTemplate>
                    <div class="company-profile-repeater">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="company-profile-repeater-job">
                                    <h5><%#Eval("JobTitle") %></h5>
                                    <p><%#Eval("CompanyName") %></p>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="company-profile-repeater-status">
                                    <p>Status</p>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="company-profile-repeater-application">
                                    <p>Applications</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="company-profile-repeater-button">
                                            <a href="#" class="btn-btn-primary btnApp">View Application</a>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="company-profile-repeater-toggle">
                                            <li class="nav-item dropdown">
                                                <button class="btn_threeDot" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="bi bi-three-dots-vertical"></i>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="#"></a></li>
                                                    <li><a class="dropdown-item" href="#"></a></li>
                                                </ul>
                                            </li>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
