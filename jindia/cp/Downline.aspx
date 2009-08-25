<%@ Page Language="C#" MasterPageFile="~/cp/MasterPage.master" AutoEventWireup="true"
    CodeFile="Downline.aspx.cs" Inherits="Downline" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">
    <table cellpadding="0" cellspacing="0" border="0" style="width:100%">
        <tr>
            <td valign="top">
                <div class="hgbg">
                    <div class="style10">
                        <table width="100%">
                            <tbody>
                                <tr>
                                    <td align="left" colspan="2">
                                        <img height="10" width="10" src="images/bullets_14.gif" />
                                        <span id="ctl00_lbltitle"><b><u>Downline Summary</u></b></span>
                                        <asp:GridView ID="GridView1" runat="server">
                                        </asp:GridView>
                                    </td>
                                  <%--  <td align="right" class="h2">
                                        Welcome, <span id="ctl00_lblid">zatoichi</span>
                                    </td>--%>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <br />
                <table cellspacing="0" cellpadding="0" border="0" align="center" style="width:100%">
                    <tbody>
                        <tr>
                            <td>
                                <table border="0" id="ctl00_ContentPlaceHolder1_matchlevel">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span class="text">
                                                    <input type="radio" checked="checked" value="1" name="ctl00$ContentPlaceHolder1$matchlevel"
                                                        id="ctl00_ContentPlaceHolder1_matchlevel_0" /><label for="ctl00_ContentPlaceHolder1_matchlevel_0">Matched
                                                            Levels</label></span></td>
                                            <td>
                                                <span class="text">
                                                    <input type="radio" onclick="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$matchlevel$1\',\'\')', 0)"
                                                        value="0" name="ctl00$ContentPlaceHolder1$matchlevel" id="ctl00_ContentPlaceHolder1_matchlevel_1" /><label
                                                            for="ctl00_ContentPlaceHolder1_matchlevel_1">Un Matched Levels</label></span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="regbg" />
                                <div class="regborder">
                                    <div class="text">
                                        <table width="100%" align="right">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div>
                                                            <table rules="all" cellspacing="0" cellpadding="2" border="1" align="center" style="font-family: Verdana;
                                                                font-size: 6pt; width: 100%; border-collapse: collapse;" id="ctl00_ContentPlaceHolder1_weeklybinarygrid">
                                                                <tbody>
                                                                    <tr align="center" style="color: White; background-color: rgb(64, 149, 66); font-weight: bold;
                                                                        height: 30px;">
                                                                        <th scope="col">
                                                                            Sno</th>
                                                                        <th scope="col">
                                                                            level No</th>
                                                                        <th scope="col">
                                                                            Left Count</th>
                                                                        <th scope="col">
                                                                            Right Count</th>
                                                                        <th scope="col">
                                                                            Pairs</th>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            1
                                                                        </td>
                                                                        <td>
                                                                            1</td>
                                                                        <td>
                                                                            1</td>
                                                                        <td>
                                                                            1</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            2
                                                                        </td>
                                                                        <td>
                                                                            2</td>
                                                                        <td>
                                                                            1</td>
                                                                        <td>
                                                                            2</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            3
                                                                        </td>
                                                                        <td>
                                                                            3</td>
                                                                        <td>
                                                                            2</td>
                                                                        <td>
                                                                            3</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            4
                                                                        </td>
                                                                        <td>
                                                                            4</td>
                                                                        <td>
                                                                            4</td>
                                                                        <td>
                                                                            3</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            5
                                                                        </td>
                                                                        <td>
                                                                            5</td>
                                                                        <td>
                                                                            7</td>
                                                                        <td>
                                                                            5</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            6
                                                                        </td>
                                                                        <td>
                                                                            6</td>
                                                                        <td>
                                                                            11</td>
                                                                        <td>
                                                                            7</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            7
                                                                        </td>
                                                                        <td>
                                                                            7</td>
                                                                        <td>
                                                                            13</td>
                                                                        <td>
                                                                            8</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            8
                                                                        </td>
                                                                        <td>
                                                                            8</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            11</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            9
                                                                        </td>
                                                                        <td>
                                                                            9</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            11</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            10
                                                                        </td>
                                                                        <td>
                                                                            10</td>
                                                                        <td>
                                                                            18</td>
                                                                        <td>
                                                                            13</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            11
                                                                        </td>
                                                                        <td>
                                                                            11</td>
                                                                        <td>
                                                                            17</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            12
                                                                        </td>
                                                                        <td>
                                                                            12</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            17</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            13
                                                                        </td>
                                                                        <td>
                                                                            13</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            16</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            14
                                                                        </td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            18</td>
                                                                        <td>
                                                                            21</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            15
                                                                        </td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            19</td>
                                                                        <td>
                                                                            28</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            16
                                                                        </td>
                                                                        <td>
                                                                            16</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            33</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            17
                                                                        </td>
                                                                        <td>
                                                                            17</td>
                                                                        <td>
                                                                            12</td>
                                                                        <td>
                                                                            30</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            18
                                                                        </td>
                                                                        <td>
                                                                            18</td>
                                                                        <td>
                                                                            10</td>
                                                                        <td>
                                                                            38</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            19
                                                                        </td>
                                                                        <td>
                                                                            19</td>
                                                                        <td>
                                                                            16</td>
                                                                        <td>
                                                                            47</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            20
                                                                        </td>
                                                                        <td>
                                                                            20</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            47</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            21
                                                                        </td>
                                                                        <td>
                                                                            21</td>
                                                                        <td>
                                                                            13</td>
                                                                        <td>
                                                                            52</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            22
                                                                        </td>
                                                                        <td>
                                                                            22</td>
                                                                        <td>
                                                                            17</td>
                                                                        <td>
                                                                            45</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            23
                                                                        </td>
                                                                        <td>
                                                                            23</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            34</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            24
                                                                        </td>
                                                                        <td>
                                                                            24</td>
                                                                        <td>
                                                                            16</td>
                                                                        <td>
                                                                            31</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            25
                                                                        </td>
                                                                        <td>
                                                                            25</td>
                                                                        <td>
                                                                            16</td>
                                                                        <td>
                                                                            22</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            26
                                                                        </td>
                                                                        <td>
                                                                            26</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            21</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            27
                                                                        </td>
                                                                        <td>
                                                                            27</td>
                                                                        <td>
                                                                            12</td>
                                                                        <td>
                                                                            17</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            28
                                                                        </td>
                                                                        <td>
                                                                            28</td>
                                                                        <td>
                                                                            8</td>
                                                                        <td>
                                                                            14</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            29
                                                                        </td>
                                                                        <td>
                                                                            29</td>
                                                                        <td>
                                                                            9</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            30
                                                                        </td>
                                                                        <td>
                                                                            30</td>
                                                                        <td>
                                                                            9</td>
                                                                        <td>
                                                                            12</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            31
                                                                        </td>
                                                                        <td>
                                                                            31</td>
                                                                        <td>
                                                                            12</td>
                                                                        <td>
                                                                            2</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr align="center" style="color: Black;">
                                                                        <td>
                                                                            32
                                                                        </td>
                                                                        <td>
                                                                            32</td>
                                                                        <td>
                                                                            15</td>
                                                                        <td>
                                                                            2</td>
                                                                        <td>
                                                                            1</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                        <td>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <strong>Total : </strong><span style="font-weight: bold;" id="ctl00_ContentPlaceHolder1_lbltotpaitrs">
                                                            32</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="regbgdown" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
