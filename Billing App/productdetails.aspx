<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="Billing_App.productdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style6
        {
            width: 144px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #FFFFFF;
        }
        .style4
        {
            text-align: left;
        }
        .style7
        {
            width: 144px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #CC3300;
        }
        #TextArea1
        {
            width: 205px;
        }
        .style9
        {
            width: 144px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #FFFFFF;
            height: 30px;
        }
        .style1
        {
            width: 144px;
        }
        .style3
        {
            height: 33px;
        }
        .style12
        {
            height: 33px;
            width: 10px;
        }
        .style15
        {
            height: 30px;
            width: 379px;
        }
        .style16
        {
            text-align: left;
            height: 30px;
        }
        .style19
        {
            width: 144px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .style20
        {
            width: 144px;
            height: 33px;
        }
        .style21
        {
            width: 379px;
        }
        .style22
        {
            text-align: left;
            width: 379px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        </br>
        <br />
        <br />
        </br>
        <asp:Panel ID="Panel1" runat="server" Height="277px" style="margin-left: 251px" 
            Width="634px">
            <table align="center" bgcolor="Black" border="0" 
                style="width:85%; height: 265px;" frame="box">
                <tr>
                    <td class="style6">
                        Product:</td>
                    <td class="style21">
                        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="213px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        HSN Code:</td>
                    <td class="style22">
                        <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="201px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        Unit:</td>
                    <td class="style15">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="213px">
                            <asp:ListItem>SET</asp:ListItem>
                            <asp:ListItem>NO.</asp:ListItem>
                            <asp:ListItem>PCS.</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style16">
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                            ID="Button10" runat="server" BackColor="#FF9900" 
                            BorderColor="Black" BorderStyle="None" Font-Strikeout="False" ForeColor="White" 
                            Height="36px" style="font-weight: 700" Text="Clear" Width="66px" 
                            onclick="Button10_Click" />
                        &nbsp;</td>
                    <td colspan="2" rowspan="1">
                        <asp:Button ID="Button11" runat="server" BackColor="#006600" 
                            BorderColor="Black" BorderStyle="None" Font-Strikeout="False" ForeColor="White" 
                            Height="36px" onclick="Button11_Click" style="font-weight: 700" Text="Save" 
                            Width="66px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button12" runat="server" BackColor="Blue" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            onclick="Button12_Click" style="font-weight: 700" Text="Update" Width="66px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" BackColor="Red" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            onclick="Button8_Click" style="font-weight: 700" Text="HOME" Width="66px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20" colspan="0" rowspan="2">
                        &nbsp;</td>
                    <td class="style3" colspan="2" rowspan="0">
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style12">
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
        
    </div>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
        DeleteCommand="DELETE FROM [PRODUCTS] WHERE [PCODE] = @PCODE" 
        InsertCommand="INSERT INTO [PRODUCTS] ([PCODE], [PNAME], [HSNCODE], [UOM]) VALUES (@PCODE, @PNAME, @HSNCODE, @UOM)" 
        SelectCommand="SELECT * FROM [PRODUCTS]" 
        UpdateCommand="UPDATE [PRODUCTS] SET [PNAME] = @PNAME, [HSNCODE] = @HSNCODE, [UOM] = @UOM WHERE [PCODE] = @PCODE">
        <DeleteParameters>
            <asp:Parameter Name="PCODE" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PCODE" Type="Int32" />
            <asp:Parameter Name="PNAME" Type="String" />
            <asp:Parameter Name="HSNCODE" Type="Int32" />
            <asp:Parameter Name="UOM" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PNAME" Type="String" />
            <asp:Parameter Name="HSNCODE" Type="Int32" />
            <asp:Parameter Name="UOM" Type="String" />
            <asp:Parameter Name="PCODE" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="PCODE" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="PCODE" HeaderText="PCODE" ReadOnly="True" 
                SortExpression="PCODE" />
            <asp:BoundField DataField="PNAME" HeaderText="PNAME" SortExpression="PNAME" />
            <asp:BoundField DataField="HSNCODE" HeaderText="HSNCODE" 
                SortExpression="HSNCODE" />
            <asp:BoundField DataField="UOM" HeaderText="UOM" SortExpression="UOM" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    </form>
</body>
</html>
