<%@ Page Title="" Language="C#" MasterPageFile="~/main-company.Master" AutoEventWireup="true" CodeBehind="company-billing.aspx.cs" Inherits="JobPilot.Company_Login.company_billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="billing-hero">
        <div class="row">
            <div class="col-md-5">
                <div class="billing-leftBox">
                    <h1>Standard Plan</h1>
                    <p></p>
                    <p>Premium Growth Tools: Accelerate Your Business Success</p>
                    <asp:Button runat="server" Text="UPGRAD PLAN" class="btn btn-primary" />
                </div>
            </div>
            <div class="col-md-7">
                <div class="billing-rightBox">
                    <div class="billing-rightBox-upper">
                        <p style="font-size: 22px;">Current Plan Benefits</p>
                        <div class="row">
                            <div class="col-md-6">
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;20 Active Jobs</p>
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;4 Highlight Jobs</p>
                            </div>
                            <div class="col-md-6">
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;8 Featured Jobs</p>
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;20 Candidates Profile View</p>
                            </div>
                        </div>
                    </div>
                    <div class="billing-rightBox-down">
                        <p style="font-size: 13px; color: #767F9B">Remaining</p>
                        <div class="row">
                            <div class="col-md-6">
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;20 Active Jobs</p>
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;4 Highlight Jobs</p>
                            </div>
                            <div class="col-md-6">
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;8 Featured Jobs</p>
                                <p><i class="bi bi-check2-all"></i>&nbsp;&nbsp;20 Candidates Profile View</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="billing-invoice">
            <p>&nbsp;&nbsp;&nbsp;Latest Invoices</p>
            <div class=" billing-invoice-heading">
                <div class="row">
                    <div class="col-md-1">

                        <div class="billing-invoice-heading-name">
                            <p>#</p>
                        </div>
                    </div>
                    <div class="col-md-1">

                        <div class="billing-invoice-heading-name">
                            <p>Date</p>
                        </div>
                    </div>
                    <div class="col-md-2">

                        <div class="billing-invoice-heading-name">
                            <p>Plan</p>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="billing-invoice-heading-name">
                            <p>Amount</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="billing-invoice-heading-name">
                            <p>Payment Provider</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="billing-invoice-heading-name">
                            <p>Payment Status</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="billing-invoice-image">
                <img src="../Picture/clipboard.png" />
            </div>
        </div>
    </div>
</asp:Content>
