<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMst.Master" AutoEventWireup="true" CodeBehind="usersDetail.aspx.cs" Inherits="Ecommerce.admin.usersDetail1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid p-2">
        <div class="row bg-white m-0 rounded">
            <div class="col-12 mt-3 position-static">
                <h2 class="mb-0">Users detail
                </h2>
            </div>

            <!-- Searching Part -->

            <%--<div class="col-12 mt-3 position-static d-flex justify-content-between">
                <div class="align-items-center">
                    <asp:TextBox runat="server" ID="txtSearchBox" placeholder="Search Users here" CssClass="border px-3 py-2 rounded"></asp:TextBox>
                    <asp:Button runat="server" CssClass="bg-primary border-0 px-3 py-2 text-white rounded" ID="btnSearch" Text="O" />
                </div>
            </div>--%>

            <div class="col-12 mt-3 position-static table-responsive">
                <asp:GridView runat="server" ID="gvUsersDetail" DataKeyNames="user_id" OnRowCommand="gvUsersDetail_RowCommand" AutoGenerateColumns="false" CssClass="table w-100 small" HeaderStyle-CssClass="text-nowrap text-white black_1">
                    <Columns>
                        <asp:TemplateField HeaderText="User name">
                            <ItemTemplate>
                                <asp:Button
                                    runat="server"
                                    Text='<%# Eval("user_name") %>'
                                    CssClass="border-0 bg-transparent text-primary"
                                    Style="cursor: pointer;"
                                    CommandName="UserClick"
                                    CommandArgument='<%# Container.DataItemIndex %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Mobile" DataField="mobile" />
                        <asp:BoundField HeaderText="Email" DataField="email" />
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <div>       
                                    <span><%# Eval("room_no") %></span>
                                    <span><%# Eval("bulding") %></span>
                                    <span><%# Eval("landmark") %></span>
                                    <span><%# Eval("area") %></span>
                                    <span><%# Eval("city") %></span>
                                    <span><%# Eval("pincode") %></span>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Profile image" DataField="profile_img" />
                        <asp:BoundField HeaderText="Created date" DataField="createdAt" />
                        <asp:BoundField HeaderText="Is Active" DataField="Active" />

                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-12 my-3 position-static">
                <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
