<%@ Page Title="Input Validation" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="week5._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>ASP.NET Input Validation</h3>
    <h6>All fields must be filled out.</h6>
    <fieldset>
        <label for="txtName" class="col-sm-3">Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPassword" class="col-sm-3">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" CssClass="label label-danger"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" Type="String" Operator="Equal" Display="Dynamic" CssClass="label label-danger"></asp:CompareValidator>
    </fieldset>
    <fieldset>
        <label for="txtConfirm" class="col-sm-3">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>

    </fieldset>
    <fieldset>
        <label for="txtAge" class="col-sm-3">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtAge" CssClass="label label-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter a # between 1 and 120" ControlToValidate="txtAge" CssClass="label label-danger" MinimumValue="1" MaximumValue="120" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    </fieldset>
        <asp:Button ID="btnsubmit" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>