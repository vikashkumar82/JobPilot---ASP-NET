<%@ Page Title="" Language="C#" MasterPageFile="~/main-company.Master" AutoEventWireup="true" CodeBehind="company-question.aspx.cs" Inherits="JobPilot.Company_Login.company_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="company-custom">
        <div class="company-custom-box">
            <p style="font-weight: 500; font-size: 20px;">Create Question</p>
            <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control"></asp:TextBox><p></p>
            <asp:CheckBox ID="check" runat="server" />&nbsp;<span>Required (Candidate Must Answer)</span>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="btnsaveQuest" runat="server" Text="Save Question" class="btn btn-primary" OnClick="btnsaveQuest_Click" />
                </div>
            </div>
        </div>
        <p style="font-weight: 500; font-size: 20px;">Existing Questions (1)</p>
        <div class="company-custom-box-heading">
            <div class="row">
                <div class="col-md-3">
                    <div class="box-heading-title">
                        <p>Title</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box-heading-title">
                        <p>REQUIRED	</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="box-heading-title">
                        <p>Action</p>
                    </div>
                </div>
            </div>
        </div>
        <asp:Repeater ID="quesRepeater" runat="server">
            <ItemTemplate>
                <div class="company-custom-box-heading-content">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="box-heading-content">
                                <asp:Label ID="lblTitile" runat="server" Text='<%#Eval("Question") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box-heading-content">
                                <asp:Label ID="lblRequired" runat="server" Text='<%#Eval("Required") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-heading-content">
                                <a href="delete-company-question.aspx?id=<%#Eval("SNo") %>"><i class="fa-solid fa-trash" style="color: #f91010;"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
