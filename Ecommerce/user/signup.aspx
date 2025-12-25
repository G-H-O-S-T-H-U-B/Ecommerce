<%@ Page Title="" Language="C#" MasterPageFile="~/user/mst.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Ecommerce.user.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SIGNUP</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- HERO SECTION START -->

    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>SIGNUP</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- HERO SECTION END -->
    <!-- ======================= -->
    <!-- SIGNUP START -->

    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>New to our Shop?</h2>
                            <p>
                                There are advances being made in science and technology
                                    everyday, and a good example of this is the
                            </p>
                            <a href="login.aspx" class="btn_3">Already have an Account ?</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>
                                Please Sign in now
                            </h3>
                            <div class="row contact_form" action="#" method="post" novalidate="novalidate">
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="email" class="form-control" id="email" name="email" value=""
                                        placeholder="Email ID">--%>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="number" class="form-control" id="mobile" name="mobile" value=""
                                        placeholder="Mobile">--%>
                                    <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server" placeholder="Mobile"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="Username">--%>
                                    <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="password" class="form-control" id="password" name="password" value=""
                                        placeholder="Password">--%>
                                    <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group">
                                    <%--<div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div>--%>
                                    <%--<button type="submit" value="submit" class="btn_3">
                                        Sign up
                                    </button>--%>
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn_3" Text="Sign up" OnClick="btnSubmit_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SIGNUP END -->

</asp:Content>
