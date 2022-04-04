<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChungKhoan.aspx.cs" Inherits="ChungKhoan.ChungKhoan" %>

<%@ Register assembly="DevExpress.Web.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            margin-left: 110px;
        }
        .auto-style7 {
            width: 99px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 99px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
            width: 227px;
        }
        .auto-style14 {
            width: 227px;
        }
        .auto-style15 {
            width: 92px;
        }
        .auto-style16 {
            width: 92px;
            height: 26px;
        }
        .auto-style17 {
            width: 92px;
            height: 29px;
        }
        .auto-style19 {
            width: 99px;
            height: 29px;
        }
        .auto-style20 {
            width: 227px;
            height: 29px;
        }
        .auto-style21 {
            width: 92px;
            height: 30px;
        }
        .auto-style23 {
            width: 99px;
            height: 30px;
        }
        .auto-style24 {
            width: 227px;
            height: 30px;
        }
        .auto-style25 {
            width: 92px;
            height: 27px;
        }
        .auto-style27 {
            width: 99px;
            height: 27px;
        }
        .auto-style28 {
            height: 27px;
            width: 227px;
        }
        .auto-style29 {
            width: 7px;
            height: 26px;
        }
        .auto-style30 {
            width: 7px;
        }
        .auto-style31 {
            width: 7px;
            height: 30px;
        }
        .auto-style32 {
            width: 7px;
            height: 29px;
        }
        .auto-style33 {
            width: 7px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4">Chứng khoán</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style29"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style15" style="margin-left: 80px">&nbsp;</td>
                <td class="auto-style30" style="margin-left: 80px">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style29"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style21">Mã CP</td>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlMaCP" runat="server" Width="169px">
                        <asp:ListItem>Panther</asp:ListItem>
                        <asp:ListItem>SPC</asp:ListItem>
                        <asp:ListItem>ACB</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style23">Mua bán</td>
                <td class="auto-style24">
                    <asp:DropDownList ID="ddlMuaBan" runat="server" Width="169px">
                        <asp:ListItem>Mua</asp:ListItem>
                        <asp:ListItem>Bán</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style29"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Khối lượng</td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtKhoiLuong" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">Giá</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtGia" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style29"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style30">
                    <asp:Button ID="btnDatLenh" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Đặt lệnh" Width="93px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnLamLai" runat="server" CssClass="auto-style9" OnClick="Button2_Click" Text="Làm lại" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style33">
                </td>
                <td class="auto-style27"></td>
                <td class="auto-style28">
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
        </table>
        <div>
            </div>
    </form>
</body>
</html>
