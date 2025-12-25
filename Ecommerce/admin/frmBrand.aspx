<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="frmBrand.aspx.cs" Inherits="Ecommerce.admin.brand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0">
            <div class="col-12 mt-3 position-static">
                <h2 class="">Brand
                </h2>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblBrandName" CssClass="w-100 d-block">Brand name</asp:Label>
                <asp:TextBox runat="server" ID="txtBrandName" CssClass="w-100 px-2 py-1"></asp:TextBox>
            </div>
            <div class="col-12 mt-3 position-static">
                <asp:Label runat="server" ID="lblBrandDesc" CssClass="w-100 d-block">Brand description</asp:Label>
                <asp:TextBox runat="server" ID="txtBrandDesc" TextMode="MultiLine" Rows="4" CssClass="w-100 px-2 py-1"></asp:TextBox>
            </div>
            <asp:Panel runat="server" ID="pnlSaveBtn" class="col-12 mt-3 position-static">
                <asp:Button runat="server" ID="btnSubmit" Text="Submit" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" OnClick="btnSubmit_Click" />
                <asp:Button runat="server" Text="Back" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" OnClick="btnBack_Click"/>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlEditUpdateBtn" CssClass="col-12 mt-3 position-static">
                <asp:Button runat="server" ID="btnEdit" Text="Edit" CssClass="border-0 px-3 py-2 text-white rounded orange pointer" OnClick="btnEdit_Click" />
                <asp:Button runat="server" ID="btnCancle" Text="Cancle"  CssClass="border-0 px-3 py-2 text-white rounded orange pointer" OnClick="btnBack_Click" />
                <asp:Button runat="server" ID="btnDelete" Text="Delete"  CssClass="border-0 px-3 py-2 text-white rounded orange pointer" OnClick="btnDelete_Click"/>
                <asp:Button runat="server" ID="btnSave" Text="Save"  CssClass="border-0 px-3 py-2 text-white rounded orange pointer" OnClick="btnSave_Click" />
                <asp:Button runat="server" Text="Back"  CssClass="border-0 px-3 py-2 text-white rounded orange pointer"  OnClick="btnBack_Click" />
            </asp:Panel>
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
