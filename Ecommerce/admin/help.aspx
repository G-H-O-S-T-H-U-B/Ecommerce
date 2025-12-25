<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="Ecommerce.admin.help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0">
            <div class="col-12 mt-3 position-static">
                <h2 class="">Help
                </h2>
            </div>
            <div class="col-12 mt-3 position-static">
            </div>
            <div class="col-12 mt-3 position-static">
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" />
            </div>
            <div class="col-12 my-3 position-static">
                <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
