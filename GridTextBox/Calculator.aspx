<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="GridTextBox.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Calculator</title>
    <link href="Calculator.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="calculator-holder">
    <table class="calculator" id="calc">
            <tr>
                <td colspan="4" class="calc_td_result">
                    <input type="text" readonly="readonly" runat="server" name="calc_result" id="calc_result" class="calc_result" />
                </td>
            </tr>
            <tr>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonCE" runat="server" CssClass="calc_btn" Text="CE" OnClick="ButtonCE_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonReturn" runat="server" CssClass="calc_btn" Text="&larr;" OnClick="ButtonReturn_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonPercentage" runat="server" CssClass="calc_btn" Text="%" OnClick="ButtonPercentage_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonPlus" runat="server" CssClass="calc_btn" Text="+" OnClick="ButtonPlus_Click" />
                </td>
            </tr>
            <tr>
                <td class="calc_td_btn">
                        <asp:Button ID="Button7" runat="server" CssClass="calc_btn" Text="7" OnClick="Button7_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button8" runat="server" CssClass="calc_btn" Text="8" OnClick="Button8_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button9" runat="server" CssClass="calc_btn" Text="9" OnClick="Button9_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonMinus" runat="server" CssClass="calc_btn" Text="-" OnClick="ButtonMinus_Click" />
                </td>
            </tr>
            <tr>
                <td class="calc_td_btn">
                        <asp:Button ID="Button4" runat="server" CssClass="calc_btn" Text="4" OnClick="Button4_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button5" runat="server" CssClass="calc_btn" Text="5" OnClick="Button5_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button6" runat="server" CssClass="calc_btn" Text="6" OnClick="Button6_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonMultiply" runat="server" CssClass="calc_btn" Text="x" OnClick="ButtonMultiply_Click" />
                </td>
            </tr>
            <tr>
                <td class="calc_td_btn">
                        <asp:Button ID="Button1" runat="server" CssClass="calc_btn" Text="1" OnClick="Button1_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button2" runat="server" CssClass="calc_btn" Text="2" OnClick="Button2_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="Button3" runat="server" CssClass="calc_btn" Text="3" OnClick="Button3_Click"/>
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonDivide" runat="server" CssClass="calc_btn" Text="&divide;" OnClick="ButtonDivide_Click" />
                </td>
            </tr>
            <tr>
                <td class="calc_td_btn">
                        <asp:Button ID="Button0" runat="server" CssClass="calc_btn" Text="0" OnClick="Button0_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonPlusMinus" runat="server" CssClass="calc_btn" Text="&plusmn;" OnClick="ButtonPlusMinus_Click"/>
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonComa" runat="server" CssClass="calc_btn" Text="," OnClick="ButtonComa_Click" />
                </td>
                <td class="calc_td_btn">
                        <asp:Button ID="ButtonEquals" runat="server" CssClass="calc_btn" Text="=" OnClick="ButtonEquals_Click"/>
                </td>
            </tr>
        </table>
    </div>
    <asp:Button ID="storedata" runat="server" Text="Store Value" Width="128px" OnClick="storedata_Click" />
        <p>
            <asp:Button ID="previousData" runat="server" Height="26px" Text="Previous Value" Width="127px" OnClick="previousData_Click" />
        </p>
    </form>
    </body>
</html>
