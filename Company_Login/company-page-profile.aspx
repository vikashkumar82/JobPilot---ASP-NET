<%@ Page Title="" Language="C#" MasterPageFile="~/header-footer.Master" AutoEventWireup="true" CodeBehind="company-page-profile.aspx.cs" Inherits="JobPilot.Company_Login.company_page_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="company-profile-page">
        <nav class="navbar bg-body-tertiary">
            <div class="container">
                <span class="navbar-brand mb-0  ">
                    <h3 style="color: #666666;">Company Details</h3>
                </span>
            </div>
        </nav>

        <div class="container banner">
            <div class="banner-image">
                <asp:Image ID="imgBannner" runat="server" />
            </div>
        </div>
        <div class="container company-details-pannel">
            <div class="row">
                <div class="col-md-3">
                    <div class="company-details-pannel-logo">
                        <asp:Image ID="imgLogo" runat="server" />
                        
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="company-details-pannel-name">
                        <h4><asp:Label ID="lblcompanyName" runat="server" Text="Label"></asp:Label></h4>
                        <p><asp:Label ID="lblJobTitle" runat="server" Text="Label"></asp:Label></p>
                    </div>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-3">
                    <div class="company-details-pannel-btn">
                        <asp:Button ID="Button1" runat="server" Text="Open Position" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
        <section class="container profile-content-hero">
            <div class="profile-content-main">
                <div class="row">
                    <div class="col-md-7">
                        <div class="profile-content-main-leftsection">
                            <h3>Company Description</h3>
                            <p></p>
                            <p style="font-size: 17px; color: #8C7F8C;">Templatecookie is a team of develoeprs working on building quality templates and scripts! We are a team of 12+ designer and developers with 3+ years of working experiences! We have aexperts in React Js, Vue js, Laravel, PHP, MySQL, Bootstrap, HTML, CSS, SCSS, Tailwind CSS, REST API & React Native!</p>
                            <div class="profile-content-main-leftsection-social">
                                <div class="row">
                                    <div class="col-md-3">
                                        <p></p>
                                        <p style="font-size: 18px;">Share This Profile:</p>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="profile-content-main-leftsection-social Facebook">
                                            <p></p>
                                            <a href="#"><i class="fa-brands fa-facebook-f" style="color: #0a65cc;"></i>&nbsp;&nbsp;&nbsp;<span style="color: #0a65cc; font-weight: 500">FaceBook</span></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="profile-content-main-leftsection-social Twitter">
                                            <p></p>
                                            <a href="#"><i class="fa-brands fa-x-twitter" style="color: #1da1f2;"></i>&nbsp;&nbsp;&nbsp;<span style="color: #1da1f2; font-weight: 500">Twitter</span></a>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="profile-content-main-leftsection-social Pintrest">
                                            <p></p>
                                            <a href="#"><i class="fa-brands fa-pinterest" style="color: #ca2127;"></i>&nbsp;&nbsp;&nbsp;<span style="color: #ca2127; font-weight: 500">Pintrest</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="profile-content-main-rightsection">
                            <div class="profile-content-main-rightsection-compantType">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="compantType-widget-leftIcon">
                                            <i class="fa-regular fa-building" style="color: #3B84D6;"></i>
                                        </div>
                                        <p>ORGANIZATION TYPE</p>
                                        <p><asp:Label ID="lblorganizationType" runat="server" Text="Label"></asp:Label></p>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="compantType-widget-rightIcon">
                                            <i class="fa-regular fa-clipboard" style="color: #3B84D6;"></i>
                                        </div>
                                        <p>Company Size</p>
                                        <p><asp:Label ID="lblCompanySizee" runat="server" Text="Label"></asp:Label></p>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-content-main-rightsection-locationType">
                                <p>Contact Information</p>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="rightsection-locationType-icon">
                                            <i class="fa-solid fa-location-dot" style="color: #848890; font-size: 40px; text-align: center"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-10">
                                        <p>LOCATION</p>
                                        <p><asp:Label ID="lblLocation" runat="server" Text="Label"></asp:Label></p>
                                    </div>
                                </div>
                                <p>Show Contact Information</p>
                            </div>
                            <div class="profile-content-main-rightsection-map">
                                <h3>&nbsp;&nbsp;Map Location</h3>
                                <p></p>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109740.86931244502!2d76.68112712292219!3d30.735202977803045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fed0be66ec96b%3A0xa5ff67f9527319fe!2sChandigarh!5e0!3m2!1sen!2sin!4v1699507495613!5m2!1sen!2sin" width="100%" height="300" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <div class="profile-content-main-rightsection-follow">
                                <h6>Follow us on:</h6>
                                <a href="#"><i class="fa-brands fa-facebook-f" ></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


</asp:Content>
