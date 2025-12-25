<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="frmProduct.aspx.cs" Inherits="Ecommerce.admin.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0">
            <div class="col-12 mt-3 position-static">
                <h2 class="">Product
                </h2>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblProductName" CssClass="w-100 d-block">Category name</asp:Label>
                <asp:TextBox runat="server" ID="txtProductName" CssClass="w-100 px-2 py-1"></asp:TextBox>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblProductDesc" CssClass="w-100 d-block">Category description</asp:Label>
                <asp:TextBox runat="server" ID="txtProductDesc" TextMode="MultiLine" Rows="4" CssClass="w-100 px-2 py-1"></asp:TextBox>
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
