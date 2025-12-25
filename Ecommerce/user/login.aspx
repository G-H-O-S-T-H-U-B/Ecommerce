<%@ Page Title="" Language="C#" MasterPageFile="~/user/mst.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Ecommerce.user.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>LOGIN</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- HERO SECTION START -->

    <div class="slider-area d-none"> <!-- Current this sectioni is not in use  -->
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Login</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- HERO SECTION END -->
    <!-- ======================= -->
    <!-- LOGIN START -->

    <section class="login_part"> <!-- section_padding -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>Login text</h2>
                            <p>
                                There are advances being made in science and technology
                                    everyday, and a good example of this is the
                           
                            </p>
                            <a href="signup.aspx" class="btn_3">Create an Account</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>Welcome Back !</h3>
                            <div class="row contact_form" action="#" method="post" novalidate="novalidate">
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="Username">--%>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <%--<input type="password" class="form-control" id="password" name="password" value=""
                                        placeholder="Password">--%>
                                    <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>
                                <div class="col-md-12 form-group">
                                    <%--<div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div>--%>
                                    <%--<button type="submit" value="submit" class="btn_3">
                                        log in
                                    </button>--%>
                                    <asp:Label runat="server" ID="lblStatus" Text="" ></asp:Label>
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn_3" Text="Login" OnClick="btnSubmit_Click"/>
                                    <a class="lost_pass" href="forgotpass.aspx">Forget password?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- LOGIN END -->

</asp:Content>
