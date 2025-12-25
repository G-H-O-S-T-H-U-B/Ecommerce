<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Ecommerce.admin.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2 ">
        <div class="row bg-white m-0 rounded">
            <div class="col-12 mt-3 position-static">
                <h2 class="">Dashborad
                </h2>
            </div>
            <div class="col-12 mt-3 position-static">
            </div>
            <div class="col-12 mt-3 position-static">
            </div>
            <div class="col-12 mt-3 position-static">
            </div>
            <div class="col-12 my-3 position-static">
                <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
            </div>
        </div>
    </div>


</asp:Content>
