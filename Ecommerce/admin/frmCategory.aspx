<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="frmCategory.aspx.cs" Inherits="Ecommerce.admin.category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0">
            <div class="col-12 mt-3 position-static">
                <h2 class="">Category
                </h2>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblCategoryName" CssClass="w-100 d-block mb-2 text-secondary">Category name</asp:Label>
                <asp:TextBox runat="server" ID="txtCategoryName" CssClass="w-100 px-2 py-1"></asp:TextBox>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblCategoryDesc" CssClass="w-100 d-block mb-2">Category description</asp:Label>
                <asp:TextBox runat="server" ID="txtCategoryDesc" TextMode="MultiLine" Rows="4" CssClass="w-100 px-2 py-1"></asp:TextBox>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" Style="background-color: var(--orange);" CssClass=" border-0 px-3 py-2 text-dark rounded" OnClick="btnSubmit_Click"/>
            </div>
            <div class="col-12 my-3 position-static">
                <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
            </div>
        </div>
    </div>

     <script>

     function hideLabel() {
         setTimeout(function () {
             var lbl = document.getElementById('<%= lblMessage.ClientID %>');
             if (lbl) {
                 lbl.style.display = 'none';
             }
         }, 3000); // 3000 ms = 3 seconds
     }

     </script>

</asp:Content>
