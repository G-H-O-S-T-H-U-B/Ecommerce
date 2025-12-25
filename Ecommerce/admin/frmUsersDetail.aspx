<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="frmUsersDetail.aspx.cs" Inherits="Ecommerce.admin.usersDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid p-2">
     <div class="row bg-white m-0">
         <div class="col-12 mt-3 position-static">
             <h2 class="">User Details
             </h2>
         </div>
         <div class="col-12 mt-3 position-static">
             <asp:Label runat="server" ID="lblName" CssClass="w-100 d-block" >User name</asp:Label>
             <asp:TextBox runat="server" ID="txtName" CssClass="w-100 px-2 py-1" Enabled="false"></asp:TextBox>
         </div>
         <div class="col-12 mt-3 position-static">
             <asp:Label runat="server" ID="lblRemark" CssClass="w-100 d-block">Remark</asp:Label>
             <asp:TextBox runat="server" ID="txtRemark" TextMode="MultiLine" Rows="4" CssClass="w-100 px-2 py-1"></asp:TextBox>
         </div>

         <div class="col-6 mt-3 position-static d-flex align-items-bottom">
             <asp:CheckBox runat="server" ID="chkActive" />
             <asp:Label runat="server" ID="lblActive" Text="&nbsp; Active" ></asp:Label>
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
