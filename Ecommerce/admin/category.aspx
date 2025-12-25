<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Ecommerce.admin.category1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0 rounded">
            <div class="col-12 mt-3 position-static">
                <h2 class="mb-0">Category
                </h2>
            </div>
            <div class="col-12 mt-3 position-static d-flex justify-content-between">
                <div class="align-items-center">
                    <asp:TextBox runat="server" ID="txtSearchBox" placeholder="Search Category here" CssClass="border px-3 py-2 rounded"></asp:TextBox>
                    <asp:Button runat="server" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" ID="btnSearch" Text="O" />
                </div>
                <asp:Button runat="server" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" ID="btnAdd" Text="Add new Category" OnClick="btnAdd_Click" />
            </div>
            <div class="col-12 mt-3 position-static table-responsive">
                <asp:GridView runat="server" ID="gvCategory" DataKeyNames="category_id" OnRowCommand="gvCategory_RowCommand" AutoGenerateColumns="false" CssClass="table w-100 small" HeaderStyle-CssClass="text-white black_1">
                    <Columns>
                        <asp:TemplateField HeaderText="Category name">
                            <ItemTemplate>
                                <asp:Button
                                    runat="server"
                                    Text='<%# Eval("category_name") %>'
                                    CssClass="border-0 bg-transparent text-primary"
                                    Style="cursor: pointer;"
                                    CommandName="CategoryClick"
                                    CommandArgument='<%# Container.DataItemIndex %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Category description" DataField="category_desc" />
                        <asp:BoundField HeaderText="Created date" DataField="createdAt" />
                    </Columns>
                </asp:GridView>
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
