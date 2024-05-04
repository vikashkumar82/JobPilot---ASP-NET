<%@ Page Title="" Language="C#" MasterPageFile="~/main-user.Master" AutoEventWireup="true" CodeBehind="user-update-education.aspx.cs" Inherits="JobPilot.user_update_education" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="update-user-experience">
        <h3>Edit Education</h3>
        <p>Education Lavel</p>
        <asp:TextBox ID="userEducationLavel" runat="server" CssClass="form-control"></asp:TextBox>
        <div class="row">
            <div class="col-md-6">
                <p>Degree</p>
                <asp:TextBox ID="userDegree" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <p>year</p>
                <asp:TextBox ID="userYear" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        

        <p>Notes</p>
        <asp:TextBox ID="userNotes" runat="server" TextMode="MultiLine" Rows="6" CssClass="form-control"></asp:TextBox>
        <div class="btn-controls-update">
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="btnUpdateEducation" runat="server" Text="Update Education" class="btn btn-success btnUpdate" OnClick="btnUpdateEducation_Click" />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnReturn" runat="server" Text="Back To Setting" Class="btn btn-primary btnUpdate" PostBackUrl="~/Setting.aspx" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
