<%@ Page Title="" Language="C#" MasterPageFile="~/main-company.Master" AutoEventWireup="true" CodeBehind="CompanyPostJob.aspx.cs" Inherits="JobPilot.Company_Login.CompanyPostJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="col-md-9">
        <div class="setting-info">
            <h3>Post a Job</h3>
            <div class="row">
                <div class="col-md-8">
                    <div class="job-title-info">
                        <label for="validationDefault01" class="form-label">Job Title</label>
                        <asp:TextBox ID="jobTitle" runat="server"
                            CssClass="form-control"></asp:TextBox><br />
                        <label for="validationDefault01" class="form-label">Tags(Search or write tag and hit enter)</label>
                        <asp:TextBox ID="jobTags" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="job-title-info">
                        <label for="validationDefault01" class="form-label">Job Category</label>
                        <asp:DropDownList ID="jobCategory" runat="server" CssClass="form-control">
                            <asp:ListItem>Design/Creative</asp:ListItem>
                            <asp:ListItem>Driving/Motor Technician</asp:ListItem>
                            <asp:ListItem>Engineer/Architects</asp:ListItem>
                            <asp:ListItem>Garments/textiles</asp:ListItem>
                            <asp:ListItem>Hospitality/Travel/Tourism</asp:ListItem>
                            <asp:ListItem>It & Telecommunication</asp:ListItem>
                            <asp:ListItem>Law/legal</asp:ListItem>
                            <asp:ListItem>Medical/Pharma</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList><br />
                        <label for="validationDefault01" class="form-label">JobRole</label>
                        <asp:DropDownList ID="jobRole" runat="server"
                            CssClass="form-control">
                            <asp:ListItem>Administrator</asp:ListItem>
                            <asp:ListItem>Assistant Manager</asp:ListItem>
                            <asp:ListItem>Director</asp:ListItem>
                            <asp:ListItem>Executive</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Team Leader</asp:ListItem>
                        </asp:DropDownList><br />
                    </div>
                </div>
            </div>
            <h5>Salary</h5>
            <asp:RadioButton ID="RadioButton1" AutoPostBack="true" Checked="true" OnCheckedChanged="RadioButton1_CheckedChanged" Text=" Salary Range" GroupName="grp1" runat="server" />
            &nbsp;
                            <asp:RadioButton ID="RadioButton2" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="true" runat="server" GroupName="grp1" Text="Coustom Salary" />
            <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                    <div class="col-md-4">
                        <label for="validationDefault01" class="form-label">Minimum Salary</label><br />
                        <div class="input-group mb-3">
                            <asp:TextBox ID="minSal" runat="server" CssClass="form-control" aria-label="Amount (to the nearest dollar)"></asp:TextBox>
                            <div class="input-group-append">
                                <span class="input-group-text">$</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label for="validationDefault01" class="form-label">Maximum Salary</label>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="maxSal" runat="server"
                                CssClass="form-control"
                                aria-label="Amount (to the nearest dollar)">
                            </asp:TextBox>
                            <div class="input-group-append">
                                <span class="input-group-text">$</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label for="validationDefault01" class="form-label">SalaryType</label><br />
                        <asp:DropDownList ID="salType1" CssClass="form-control"
                            runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Monthly</asp:ListItem>
                            <asp:ListItem>Project Basis</asp:ListItem>
                            <asp:ListItem>Hourly</asp:ListItem>
                            <asp:ListItem>Yearly</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="Panel2" Visible="false" runat="server">
                <div class="row">
                    <div class="col-md-8">
                        <label for="validationDefault01" class="form-label">Salary Type</label><br />
                        <asp:TextBox ID="customSal" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label for="validationDefault01" class="form-label">Salary Type</label><br />
                        <asp:DropDownList ID="salType2" CssClass="form-control" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Monthly</asp:ListItem>
                            <asp:ListItem>Project Basis</asp:ListItem>
                            <asp:ListItem>Hourly</asp:ListItem>
                            <asp:ListItem>Yearly</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </asp:Panel>
            <br />
            <h5>Advance Information</h5>
            <div class="row">
                <div class="col-md-4">
                    <label for="validationDefault01" class="form-label">Education</label><br />
                    <asp:DropDownList ID="jobEducation" CssClass="form-control" runat="server">
                        <asp:ListItem>High School</asp:ListItem>
                        <asp:ListItem>Intermediate</asp:ListItem>
                        <asp:ListItem>Bachelor Degree</asp:ListItem>
                        <asp:ListItem>Master Degree</asp:ListItem>
                        <asp:ListItem>Graduated</asp:ListItem>
                        <asp:ListItem>Phd</asp:ListItem>
                        <asp:ListItem>Any</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label for="validationDefault01" class="form-label">Experience</label><br />
                    <asp:DropDownList ID="jobExperience" CssClass="form-control" runat="server">
                        <asp:ListItem>Fresher</asp:ListItem>
                        <asp:ListItem>1 Year</asp:ListItem>
                        <asp:ListItem>2 Years</asp:ListItem>
                        <asp:ListItem>3+ Years</asp:ListItem>
                        <asp:ListItem>5+ Years</asp:ListItem>
                        <asp:ListItem>8+ Years</asp:ListItem>
                        <asp:ListItem>15+ Years</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <label for="jobType" class="form-label">Job Type</label><br />
                    <asp:DropDownList ID="jobType" CssClass="form-control" runat="server">
                        <asp:ListItem>Full Time</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                        <asp:ListItem>Contractual</asp:ListItem>
                        <asp:ListItem>Intern</asp:ListItem>
                        <asp:ListItem>Freelance</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <label for="validationDefault01" class="form-label">Total Vacancies</label><br />
                    <asp:TextBox ID="jobVacacies" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="validationDefault01" class="form-label">Deadline Expired</label><br />
                    <asp:TextBox ID="jobDeadline" class="form-control" type="date" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="location-hero">
                <h5>Location (Click to add a pointer)</h5>
                <asp:TextBox ID="jobLocation" runat="server" CssClass="form-control mb-3" placeholder="Enter City Name"></asp:TextBox>
                <div class="map">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d102167.60619592323!2d76.68112719819783!3d30.735202977715797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fed0be66ec96b%3A0xa5ff67f9527319fe!2sChandigarh!5e1!3m2!1sen!2sin!4v1697455606558!5m2!1sen!2sin"
                        width="917" height="450" style="border: 0;" allowfullscreen
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>

            <div class="benifits-tags">
                <h5>Benifits</h5>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox1" runat="server" class="checkox" Text="4 Day WorkWeek" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox2" runat="server" class="checkox" Text="400K" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox3" runat="server" class="checkox" Text="Async" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox4" runat="server" class="checkox" Text="Company retreats" />
                </div>
                <div class="benifits-tags-checkBox ">
                    <asp:CheckBox ID="CheckBox5" runat="server" class="checkox" Text="Cow working budget" />
                </div>
                <div class="benifits-tags-checkBox ">
                    <asp:CheckBox ID="CheckBox6" runat="server" class="checkox" Text="Distrunution Team" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox7" runat="server" class="checkox" Text="Equity Compensation" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox8" runat="server" class="checkox" Text="Free Gym Membership" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox9" runat="server" class="checkox" Text="Home Office Budget" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox10" runat="server" class="checkox" Text="Learning Budget" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox11" runat="server" class="checkox" Text="No policy at work" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox12" runat="server" class="checkox" Text="Paid time Off" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox13" runat="server" class="checkox" Text="Pay In Crypto" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox14" runat="server" class="checkox" Text="Profit Sharing" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox15" runat="server" class="checkox" Text="Unlimited Vacation" />
                </div>
                <div class="benifits-tags-checkBox">
                    <asp:CheckBox ID="CheckBox16" runat="server" class="checkox" Text="Vision Insurance" />
                </div>
            </div>
            <div class="post-job-skills">

                <div class="row">
                    <div class="col-md-9">
                        <p>Skills</p>
                        <asp:TextBox ID="postJobSkills" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
            <div class="post-job-description">
                <h5>Job Description</h5>
                <asp:TextBox ID="postJobDescription" runat="server" TextMode="MultiLine" Rows="6" CssClass="form-control"></asp:TextBox>
            </div>
            <p></p>
            <asp:Button ID="company_postJob" runat="server" Text="Post Job" CssClass="btn btn-primary" OnClick="company_postJob_Click" />

        </div>
    </div>
</asp:Content>
