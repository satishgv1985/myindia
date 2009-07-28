<%@ Page Language="C#" MasterPageFile="~/MainSite.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Register TagName="LeftColumn" TagPrefix="uc" Src="~/userControls/LeftColumn.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <%--   <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td colspan="2">
                <ul id="nav">
                    <li class="nav1" style="background-image: url('files/nav1.gif')"><a href="default.aspx">
                        Home</a></li>
                    <li class="nav2" style="background-image: url('files/nav2.gif')"><a href="products/index.htm">
                        Products</a></li>
                    <li class="nav3" style="background-image: url('files/nav3.gif')"><a href="services/index.htm">
                        Services</a></li>
                    <li class="nav4" style="background-image: url('files/nav4.gif')"><a href="about/customers.htm">
                        Customers</a></li>
                    <li class="nav4" style="background-image: url('files/nav4.gif')"><a href="news/index.htm">
                        News & Events</a><a href="http://www.techunified.com/case_studies.htm" /></li>
                    <li class="nav5" style="background-image: url('files/nav5.gif')"><a href="about/resources.htm">
                        Resources <em><strong /></em></a></li>
                    <li class="nav6" style="background-image: url('files/nav6.gif')"><a href="AboutUs.aspx">
                        About Us<em><strong /></em></a></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <img src="ourAssets/JayahoIndia-Logo.jpg" alt="Jayaho India" width="300" height="84" />
            </td>
            <td>
                <img src="files/header_grow.jpg" alt="Jayaho India" width="400" height="104" />
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td>
                <div id="newsFeed" class="features" style="background: transparent url('files/features_back.gif') repeat-x scroll 0 26px">
                    <h3 style="background-image: url('files/h3_back.gif');">
                        News</h3>
                    <p align="left" class="style9">
                        <span class="style14">10 July 2007:</span> TechUnified has become a part of ORG
                        Group and now an <strong>ORG Group Company</strong></p>
                    <p align="left">
                        <span class="style10"><span class="style14">20 June 2007:</span> We've extended our
                            software product line; Our new products are <strong>mProtal</strong>, <strong>IMPS </strong>
                            & <strong>mShare</strong></span></p>
                    <p align="left">
                        <span class="style8"><span class="style14">11 Nov 2006:</span> TechUnified sucessfully
                            bagged new projects with a major Gulf based bank.</span><br />
                        <a href="news/index.htm">Continue to Full Articles �</a></p>
                </div>
            </td>
            <td>
                <div id="featuredService" class="features" style="background: transparent url('files/features_back.gif') repeat-x scroll 0 26px">
                    <h3 style="background-image: url('files/h3_back.gif');">
                        Testimonials
                    </h3>
                    <div align="left">
                        <p class="style3">
                            <span class="style15"><strong>"</strong>We are very pleased
                                <br />
                                to be working with
                                <br />
                                TechUnified. They
                                <br />
                                have proven to be
                                <br />
                                efficient and professional..."</span></p>
                        <p class="style3">
                            <strong>Dr. Nazar AlBaharna<br />
                                CEO, TCGME, Bahrain</strong></p>
                        <p class="style3">
                            <a href="about/customers.htm">More Testimonials �</a></p>
                    </div>
                </div>
            </td>
        </tr>
    </table>--%>
              <uc:LeftColumn ID="leftColumn" runat="server" />
                <div id="col_right">
                        <%--<ul class="serviceList" id="buildServices">
                            <li>
                                <div align="left">
                                    <!-- </div-->
                                </div>
                            </li>
                        </ul>
                        <ul class="serviceList" id="marketServices">
                            <li></li>
                        </ul>
                        <ul class="serviceList" id="growServices">
                            <li></li>
                        </ul>
                        <p>
                            &nbsp;</p>
                        <br>
                        <br>
                        <br>
                        <br>--%>
                        <img src="original/companyinfo_new.gif" alt="" usemap="#Map" border="0">
                        <map name="Map">
                            <area shape="rect" coords="274,7,352,23" href="images/nlq4.jpg">
                            <area shape="rect" coords="364,7,422,23" href="about/contact.htm">
                            <area shape="rect" coords="436,8,508,23" href="about/index.htm">
                        </map>
                        <div class="features" style="background: transparent url('original/features_back.gif') 0 26px repeat-x;"
                            id="newsFeed">
                            <h3 style="background-image: url('original/h3_back.gif');">
                                News</h3>
                            <p class="style9" align="left">
                                <span class="style14">10 June 2009:</span> JayahoInida has become a part of so and
                                so Group and now an <strong>so and so Company</strong></p>
                            <p align="left">
                                <span class="style10"><span class="style14">20 June 2009:</span> We've extended our
                                    softwares line; Our products are <strong>Mobile Add</strong>, <strong>sample text </strong>
                                    &amp; <strong>text</strong></span></p>
                            <p align="left">
                                <span class="style8"><span class="style14">11 June 2009:</span> JayahoIndia sucessfully
                                    started the development of the marketing and other things.</span><br>
                                <a href="/news/index.htm">Continue to Full Articles �</a></p>
                        </div>
                        <div class="features" id="featuredService" style="background: transparent url('original/features_back.gif') 0 26px repeat-x;">
                            <h3 style="background-image: url('original/h3_back.gif');">
                                Testimonials
                            </h3>
                            <div align="left">
                                <p class="style3">
                                    <span class="style15"><strong>"</strong>I really like the
                                        <br>
                                        JayahoIndia SMS product
                                        <br>
                                        I use a lot of SMS
                                        <br>
                                        they are good,
                                        <br>
                                        efficient and professional..."</span></p>
                                <p class="style3">
                                    <strong>Name of sample<br>
                                        CEO, some company</strong></p>
                                <p class="style3">
                                    <a href="customers.htm">More Testimonials �</a></p>
                            </div>
                        </div>
                    </div>
</asp:Content>
