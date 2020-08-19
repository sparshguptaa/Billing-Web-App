<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinanacialYear.aspx.cs" Inherits="Billing_App.FinanacialYear" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            color: #000099;
        }
        .style2
        {
            font-size: x-large;
            color: #FFFFFF;
        }
        .style3
        {
            font-size: large;
            color: #000099;
            height: 34px;
        }
        .style4
        {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
            SelectCommand="SELECT * FROM [FINANCIALYEARS]"></asp:SqlDataSource>
    
    
        <asp:Panel ID="Panel1" runat="server" Height="216px" BorderColor="#CC3300" 
            style="margin-left: 403px" Width="451px">
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="successfully updated!!" 
                Visible="False"></asp:Label>
            <br></br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br></br>
            <br></br>
            <br></br>
            <div>
                <table align="center" bgcolor="Black" frame="box" 
                    style="height: 140px; width: 413px; margin-left: 0px;">
                    <tr>
                        <td class="style2">
                            <strong>Select Financial Year:</strong><td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="FYEAR" DataValueField="YEARCODE" 
                                    Height="36px" Width="148px">
                                </asp:DropDownList>
                            </td>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <td class="style4">
                            </td>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="White" Height="36px" 
                                onclick="Button2_Click" 
                                style="font-weight: 700; color: #FFFFFF; background-color: #000000;" 
                                Text="HOME" Width="105px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#FFCC66" Height="36px" 
                                onclick="Button1_Click" 
                                style="font-weight: 700; color: #FFFFFF; background-color: #000000;" 
                                Text="Change Year" Width="105px" />
                            <td>
                                &nbsp;</td>
                        </td>
                    </tr>
                </table>
            </div>
            <br></br>
            <br></br>
            <br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            </br>
            </br>
            </br>
            </br>
            </br></asp:Panel>
    
    </div>
    </form>
</body>
</html>
