<%@ Page Title="" Language="C#" MasterPageFile="~/main-user.Master" AutoEventWireup="true" CodeBehind="update-user-experience.aspx.cs" Inherits="JobPilot.update_user_experience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="update-user-experience">
        <h3>Edit Experience</h3>
        <p>Company</p>
        <asp:TextBox ID="userCompany" runat="server" CssClass="form-control"></asp:TextBox>
        <div class="row">
            <div class="col-md-6">
                <p>Department</p>
                <asp:TextBox ID="userDepartment" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <p>Designation</p>
                <asp:TextBox ID="userDesignation" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <p>Start Date</p>
                <asp:TextBox ID="userStart" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <p>End Date</p>
                <asp:TextBox ID="userEnd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <p></p>
        <asp:CheckBox ID="userWorking" runat="server" />&nbsp;&nbsp;I am currently Working
            <br /><asp:Label ID="lblUserWorking" runat="server" Text="Label" style="color:forestgreen;"></asp:Label><br />
                                                                   
        
        <p>Responsbility</p>
        <asp:TextBox ID="userResponsibility" runat="server" TextMode="MultiLine" Rows="6" CssClass="form-control"></asp:TextBox>
        <div class="btn-controls-update">
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Experience" class="btn btn-success btnUpdate" OnClick="btnUpdate_Click" />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnReturn" runat="server" Text="Back To Setting" Class="btn btn-primary btnUpdate" PostBackUrl="~/Setting.aspx" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
