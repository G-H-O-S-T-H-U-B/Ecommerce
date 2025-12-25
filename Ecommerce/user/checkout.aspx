<%@ Page Title="" Language="C#" MasterPageFile="~/user/mst.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Ecommerce.user.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>CHECKOUT</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- HERO SECTION START -->

    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Checkout</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- HERO SECTION END -->
    <!-- ========================= -->
    <!-- MAIN CONTENT START -->

    <section class="checkout_area py-5 mt-5">
        <div class="container">
            <div class="billing_details">
                <div class="row">

                    <!-- FORM START -->

                    <div class="col-lg-8">

                        <!-- BILLING DETAILS START -->

                        <h3 class="bg-light p-2">Billing Details</h3>
                        <div class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="first" name="name" />
                                <span class="placeholder" data-placeholder="First name"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="last" name="name" />
                                <span class="placeholder" data-placeholder="Last name"></span>
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="company" name="company" placeholder="Company name" />
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="number" name="number" />
                                <span class="placeholder" data-placeholder="Phone number"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="email" name="compemailany" />
                                <span class="placeholder" data-placeholder="Email Address"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <select class="country_select">
                                    <option value="1">Country</option>
                                    <option value="2">Country</option>
                                    <option value="4">Country</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="add1" name="add1" />
                                <span class="placeholder" data-placeholder="Address line 01"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="add2" name="add2" />
                                <span class="placeholder" data-placeholder="Address line 02"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="city" name="city" />
                                <span class="placeholder" data-placeholder="Town/City"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <select class="country_select">
                                    <option value="1">District</option>
                                    <option value="2">District</option>
                                    <option value="4">District</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="zip" name="zip" placeholder="Postcode/ZIP" />
                            </div>

                            <!-- SIPHING DETAILS START -->

                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h3 class="bg-light p-2">Shipping Details</h3>
                                    <input type="checkbox" id="f-option3" name="selector" />
                                    <label for="f-option3">Ship to a different address?</label>
                                </div>
                                <textarea class="form-control" name="message" id="message" rows="1"
                                    placeholder="Order Notes"></textarea>
                            </div>
                        </div>
                    </div>

                    <!-- FORM END -->
                    <!-- ===================== -->
                    <!-- BILL DETAIL START -->

                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Your Order</h2>
                            <ul class="list">
                                <li>
                                    <a href="#">Product
                                        <span>Total</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Fresh Blackberry
                                        <span class="middle">x 02</span>
                                        <span class="last">$720.00</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Fresh Tomatoes
                                        <span class="middle">x 02</span>
                                        <span class="last">$720.00</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Fresh Brocoli
                                        <span class="middle">x 02</span>
                                        <span class="last">$720.00</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="list list_2">
                                <li>
                                    <a href="#">Subtotal
                                        <span>$2160.00</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Shipping
                                        <span>Flat rate: $50.00</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Total
                                        <span>$2210.00</span>
                                    </a>
                                </li>
                            </ul>

                            <div class="creat_account">
                                <input type="checkbox" id="f-option4" name="selector" />
                                <label for="f-option4">I’ve read and accept the </label>
                                <a href="#" class="small">terms & conditions*</a>
                            </div>
                            <a class="btn_3" href="#">Proceed to Pay</a>
                        </div>
                    </div>

                    <!-- BILL DETAIL END -->

                </div>
            </div>
        </div>
    </section>

    <!-- MAIN CONTENT END -->

</asp:Content>
