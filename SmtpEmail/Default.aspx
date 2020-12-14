<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SmtpEmail._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div class="jumbotron">
   <h1>Kmail Web</h1>
   <p class="lead">Kmail has reached Windows, So we decided to expand to the web <a href="https://storage.googleapis.com/www.kgmurthy.com/NewsKos.html">Learn more</a></p>
   </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Send Email</h3>
        </div>
        <div class="panel-body">

            <div class="form-group row">
                <label for="from" class="col-sm-1 col-form-label">From</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control-plaintext" Width="100%"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="password" class="col-sm-1 col-form-label">Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control-plaintext" TextMode="Password" Width="100%" Text="krishnagrade2%"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="to" class="col-sm-1 col-form-label">To</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtTo" runat="server" CssClass="form-control-plaintext" Width="100%"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="subject" class="col-sm-1 col-form-label">Subject</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control-plaintext" Width="100%"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label for="body" class="col-sm-1 col-form-label">Body</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtBody" runat="server" CssClass="form-control-plaintext" Width="100%" TextMode="MultiLine" Columns="10" Rows="10"></asp:TextBox>
                </div>
            </div>

            <p>
                <asp:Button ID="btnSend" runat="server" Text="Send Email" CssClass="btn btn-primary" OnClick="btnSend_Click" />
            </p>
            <asp:Label runat="server" ID="lblDN"></asp:Label>
        </div>
    </div>

</asp:Content>
