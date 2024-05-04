<%@ Page Title="" Language="C#" MasterPageFile="~/main-company.Master" AutoEventWireup="true" CodeBehind="CompanySetting.aspx.cs" Inherits="JobPilot.Company_Login.CompanySetting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-9">
    <div class="company-setting-info">
      
            <h3>Setting</h3>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Company Info</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Founding Info</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Social Media Profile</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="setting-tab" data-bs-toggle="tab" data-bs-target="#setting-tab-pane" type="button" role="tab" aria-controls="setting-tab-pane" aria-selected="false">Account Setting</button>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                      <br /><p></p>
                    <h5>Logo & Banner Image</h5>
                    <div class="company-info-hero">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="company-setting-logo">
                                    <p>Upload Logo</p>
                                    <div class="company-logo">
                                        <asp:Image ID="companyLogo" runat="server" /><br /><br />
                                        <asp:FileUpload ID="companyLogoUpload" runat="server" class="btn btn-light"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="company-info-img">
                                    <p>Banner Image</p>
                                    <div class="company-pic">
                                        <asp:Image ID="companyPic" runat="server" /><br /><br />
                                        <asp:FileUpload ID="companyPicUpload" runat="server" CssClass="btn btn-light" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="setting-companyName">
                            <div class="row">
                                <div class="col-md-6">
                                    <label for="validationDefault01" class="form-label">Company Name</label>
                                    <asp:TextBox ID="companyName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div><p></p>
                                <div class="col-md-6"></div>
                            </div>
                            <label for="validationDefault01" class="form-label">About Us</label>
                            <asp:TextBox ID="companyAboutUs" runat="server" TextMode="MultiLine" Rows="8" CssClass="form-control"></asp:TextBox><br />
                            <asp:Button ID="btn_companyInfoUpdate" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="btn_companyInfoUpdate_Click" />
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                    <div class="setting-founding-info">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="validationDefault01" class="form-label">Organization Type</label>
                                <asp:DropDownList ID="companyOrganization" runat="server" CssClass="form-control">
                                    <asp:ListItem>Goverment </asp:ListItem>
                                    <asp:ListItem>International Agencies</asp:ListItem>
                                    <asp:ListItem>NGO</asp:ListItem>
                                    <asp:ListItem>Private</asp:ListItem>
                                    <asp:ListItem>Public</asp:ListItem>
                                    <asp:ListItem>Semi Goverment</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="col-md-4">
                                <label for="validationDefault01" class="form-label">Industry Type</label>
                                <asp:DropDownList ID="companyIndustry" runat="server" CssClass="form-control">
                                    <asp:ListItem>Agro Base Industry</asp:ListItem>
                                    <asp:ListItem>Airline/Travel/Tourism</asp:ListItem>
                                    <asp:ListItem>Archi/Enggr/Construction</asp:ListItem>
                                    <asp:ListItem>Automobile/Industrial Machine</asp:ListItem>
                                    <asp:ListItem>Bank/Mon-Bank Fin. Institute</asp:ListItem>
                                    <asp:ListItem>Electronics/Consumer Durables</asp:ListItem>
                                    <asp:ListItem>Energy/Power/Fuel</asp:ListItem>
                                    <asp:ListItem>Entertainment/Recreation</asp:ListItem>
                                    <asp:ListItem>Fire/Safety & Protection</asp:ListItem>
                                    <asp:ListItem>Food & Brevage Industry</asp:ListItem>
                                    <asp:ListItem>Garments/Textile</asp:ListItem>
                                    <asp:ListItem>Govt./Semi govt./Autonomous</asp:ListItem>
                                    <asp:ListItem>Hospital/Diagnostic Center</asp:ListItem>
                                    <asp:ListItem>Hotel/Restaurant</asp:ListItem>
                                    <asp:ListItem>Information Technology</asp:ListItem>
                                    <asp:ListItem>Logistics/Transportation</asp:ListItem>
                                    <asp:ListItem>Manufacturing (Heavy Industry)</asp:ListItem>
                                    <asp:ListItem>Manufacturing (Light Industry</asp:ListItem>
                                    <asp:ListItem>Media/Advertising/Event Mgt.</asp:ListItem>
                                    <asp:ListItem>NGO Development</asp:ListItem>
                                    <asp:ListItem>Pharmaceuticals</asp:ListItem>
                                    <asp:ListItem>Information Technology</asp:ListItem>
                                    <asp:ListItem>Real Estate/Development</asp:ListItem>
                                    <asp:ListItem>Security Service</asp:ListItem>
                                    <asp:ListItem>Telecommunication</asp:ListItem>
                                    <asp:ListItem>Wholesale/Reatail/Export-Import</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="col-md-4">
                                <label for="validationDefault01" class="form-label">Team Size</label>
                                <asp:DropDownList ID="comapanyTeamSize" runat="server" CssClass="form-control">
                                    <asp:ListItem>Only me</asp:ListItem>
                                    <asp:ListItem>10 Members</asp:ListItem>
                                    <asp:ListItem>10-20 Members</asp:ListItem>
                                    <asp:ListItem>20-50 Members</asp:ListItem>
                                    <asp:ListItem>50-100 Members</asp:ListItem>
                                    <asp:ListItem>100-200 Members</asp:ListItem>
                                    <asp:ListItem>200-500 Members</asp:ListItem>
                                    <asp:ListItem>500+ Members</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="setting-founding-info">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="validationDefault01" class="form-label">Year of Establishment</label>
                                <asp:TextBox ID="companyEstablishment"  type="date" Class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="validationDefault01" class="form-label">Website</label>
                                <asp:TextBox ID="companyWebsite" runat="server" Class="form-control founding-info-input"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="setting-founding-info">
                        <label for="validationDefault01" class="form-label">Company Vision</label>
                        <asp:TextBox ID="companyVision" runat="server" TextMode="MultiLine" Rows="8" CssClass="form-control" ></asp:TextBox>
                        <asp:Button ID="btn_companyFoundingUpdate" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="btn_companyFoundingUpdate_Click" />
                    </div>
                </div>
                <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
                    <div class="setting-socialMedia-profile" ">
                        <div class="row" >
                            <div class="col-md-11">
                                <asp:TextBox ID="companySocialMedia" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                           <div class="col-md-1">
                               <asp:Button ID="btn_addSocialMedia" runat="server" Text="Add SocialMedia" class="btn btn-success" OnClick="btn_addSocialMedia_Click" />
                           </div>
                            <asp:GridView ID="grid_socialMedia" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="companySocialMedia" HeaderText="Social Media" ReadOnly="true" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <li class="nav-item dropdown">
                                                <button class="btn_threeDot" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="bi bi-three-dots-vertical"></i>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item" href="#">edit</a>
                                                    </li>
                                                    <li><a class="dropdown-item" href="#">Delete</a></li>
                                                </ul>
                                            </li>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>
                </div>
                <div class="tab-pane fade" id="setting-tab-pane" role="tabpanel" aria-labelledby="setting-tab" tabindex="0">
                    <div class="account-setting-info">
                        <h6>Company Location (Click to add a pointer)</h6>
                        <asp:TextBox ID="companyLocation" runat="server" CssClass="form-control"></asp:TextBox>
                        <div class="account-setting-info-map">
                           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109740.86931244502!2d76.68112712292219!3d30.735202977803045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fed0be66ec96b%3A0xa5ff67f9527319fe!2sChandigarh!5e0!3m2!1sen!2sin!4v1698041994186!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <h6>Company Phone & Email Address For Public View</h6>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="companyPhone">
                                    <p>Phone</p>
                                    <asp:TextBox ID="companyPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="setting-companyEmail">
                                    <p>Email</p>
                                    <asp:Label ID="companyEmail" runat="server" Text="Label" CssClass="form-control"></asp:Label>
                                </div>
                            </div>
                            <asp:Button ID="btn_companyPhone" runat="server" Text="Save changes" class="btn btn-primary" OnClick="btn_companyPhone_Click" />
                        </div><br />
                        <h5>Change Account Username & Email</h5>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="setting-companyUsername">
                                    <p>User Name</p>
                                    <asp:TextBox ID="companyUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="setting-companyUserEmail">
                                    <p>Email</p>
                                    <asp:Label ID="companyEmail1" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            <asp:Button ID="btn_companyUsername" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="btn_companyUsername_Click" />
                        </div>
                    </div>
                </div>
            </div> 
    </div>
</div>
</asp:Content>
