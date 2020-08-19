<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="partydetails.aspx.cs" Inherits="Billing_App.partydetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 130px;
        }
        .style3
        {
            height: 33px;
        }
        .style4
        {
            text-align: left;
        }
        .style6
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #6600CC;
        }
        .style7
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #CC3300;
        }
        .style8
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #0066FF;
        }
        .style9
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #00FF00;
        }
        .style10
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #CC0000;
        }
        .style11
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            color: #CC0099;
        }
        #TextArea1
        {
            width: 205px;
        }
        .style12
        {
            height: 33px;
            width: 10px;
        }
        .style13
        {
            width: 130px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .style14
        {
            width: 130px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="415px" style="margin-left: 183px" 
            Width="424px">
            <div class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <table align="center" bgcolor="Black" border="0" style="width:100%;" 
                frame="box">
                <tr>
                    <td class="style6">
                        Party Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="213px"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Address:</td>
                    <td class="style4">
                        <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="213px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        city:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="206px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        State:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="STATENAME" 
                            DataValueField="STATECODE" Height="32px" Width="219px">
                        </asp:DropDownList>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        Mobile:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="32px" TextMode="Number" 
                            Width="198px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        GSTIN:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="203px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    </td>
                    <td class="style3" colspan="2" rowspan="0">
                        <asp:Button ID="Button1" runat="server" BackColor="#FF9900" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            style="font-weight: 700" Text="Clear" Width="66px" 
                            onclick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" BackColor="#006600" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            style="font-weight: 700" Text="Save" Width="66px" 
                            onclick="Button6_Click" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button7" runat="server" BackColor="Blue" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            onclick="Button7_Click" style="font-weight: 700" Text="REFRESH" Width="70px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" BackColor="Red" BorderColor="Black" 
                            BorderStyle="None" Font-Strikeout="False" ForeColor="White" Height="36px" 
                            onclick="Button8_Click" style="font-weight: 700" Text="HOME" Width="66px" />
                    </td>
                    <td class="style12">
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style3" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="style12">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="PID" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="PIDLabel" runat="server" Text='<%# Eval("PID") %>' />
                </td>
                <td>
                    <asp:Label ID="PARTYNAMELabel" runat="server" Text='<%# Eval("PARTYNAME") %>' />
                </td>
                <td>
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Eval("ADDRESS") %>' />
                </td>
                <td>
                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                </td>
                <td>
                    <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
                </td>
                <td>
                    <asp:Label ID="MOBILELabel" runat="server" Text='<%# Eval("MOBILE") %>' />
                </td>
                <td>
                    <asp:Label ID="GSTINLabel" runat="server" Text='<%# Eval("GSTIN") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="PIDLabel1" runat="server" Text='<%# Eval("PID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PARTYNAMETextBox" runat="server" 
                        Text='<%# Bind("PARTYNAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                </td>
                <td>
                    <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MOBILETextBox" runat="server" Text='<%# Bind("MOBILE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GSTINTextBox" runat="server" Text='<%# Bind("GSTIN") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="PIDTextBox" runat="server" Text='<%# Bind("PID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PARTYNAMETextBox" runat="server" 
                        Text='<%# Bind("PARTYNAME") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
                </td>
                <td>
                    <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="MOBILETextBox" runat="server" Text='<%# Bind("MOBILE") %>' />
                </td>
                <td>
                    <asp:TextBox ID="GSTINTextBox" runat="server" Text='<%# Bind("GSTIN") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="PIDLabel" runat="server" Text='<%# Eval("PID") %>' />
                </td>
                <td>
                    <asp:Label ID="PARTYNAMELabel" runat="server" Text='<%# Eval("PARTYNAME") %>' />
                </td>
                <td>
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Eval("ADDRESS") %>' />
                </td>
                <td>
                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                </td>
                <td>
                    <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
                </td>
                <td>
                    <asp:Label ID="MOBILELabel" runat="server" Text='<%# Eval("MOBILE") %>' />
                </td>
                <td>
                    <asp:Label ID="GSTINLabel" runat="server" Text='<%# Eval("GSTIN") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    PID</th>
                                <th runat="server">
                                    PARTYNAME</th>
                                <th runat="server">
                                    ADDRESS</th>
                                <th runat="server">
                                    CITY</th>
                                <th runat="server">
                                    STATE</th>
                                <th runat="server">
                                    MOBILE</th>
                                <th runat="server">
                                    GSTIN</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="PIDLabel" runat="server" Text='<%# Eval("PID") %>' />
                </td>
                <td>
                    <asp:Label ID="PARTYNAMELabel" runat="server" Text='<%# Eval("PARTYNAME") %>' />
                </td>
                <td>
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Eval("ADDRESS") %>' />
                </td>
                <td>
                    <asp:Label ID="CITYLabel" runat="server" Text='<%# Eval("CITY") %>' />
                </td>
                <td>
                    <asp:Label ID="STATELabel" runat="server" Text='<%# Eval("STATE") %>' />
                </td>
                <td>
                    <asp:Label ID="MOBILELabel" runat="server" Text='<%# Eval("MOBILE") %>' />
                </td>
                <td>
                    <asp:Label ID="GSTINLabel" runat="server" Text='<%# Eval("GSTIN") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
        DeleteCommand="DELETE FROM [parties] WHERE [PID] = @PID" 
        InsertCommand="INSERT INTO [parties] ([PID], [PARTYNAME], [ADDRESS], [CITY], [STATE], [MOBILE], [GSTIN]) VALUES (@PID, @PARTYNAME, @ADDRESS, @CITY, @STATE, @MOBILE, @GSTIN)" 
        SelectCommand="SELECT * FROM [parties]" 
        UpdateCommand="UPDATE [parties] SET [PARTYNAME] = @PARTYNAME, [ADDRESS] = @ADDRESS, [CITY] = @CITY, [STATE] = @STATE, [MOBILE] = @MOBILE, [GSTIN] = @GSTIN WHERE [PID] = @PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PID" Type="Int32" />
            <asp:Parameter Name="PARTYNAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE" Type="String" />
            <asp:Parameter Name="MOBILE" Type="String" />
            <asp:Parameter Name="GSTIN" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PARTYNAME" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="CITY" Type="String" />
            <asp:Parameter Name="STATE" Type="String" />
            <asp:Parameter Name="MOBILE" Type="String" />
            <asp:Parameter Name="GSTIN" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
        SelectCommand="SELECT * FROM [STATECODES]"></asp:SqlDataSource>
    </form>
</body>
</html>
