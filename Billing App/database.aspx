<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="Billing_App.database" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <strong><span class="style1">INVOICE ITEMS</span><br class="style1" /> </strong>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="INVOICE_IDLabel" runat="server" 
                                Text='<%# Eval("INVOICE_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PCODELabel" runat="server" Text='<%# Eval("PCODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HSN_CODELabel" runat="server" Text='<%# Eval("HSN_CODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UOMLabel" runat="server" Text='<%# Eval("UOM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AMOUNTLabel" runat="server" Text='<%# Eval("AMOUNT") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="INVOICE_IDTextBox" runat="server" 
                                Text='<%# Bind("INVOICE_ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PCODETextBox" runat="server" Text='<%# Bind("PCODE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="HSN_CODETextBox" runat="server" 
                                Text='<%# Bind("HSN_CODE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SIZETextBox" runat="server" Text='<%# Bind("SIZE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QTYTextBox" runat="server" Text='<%# Bind("QTY") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UOMTextBox" runat="server" Text='<%# Bind("UOM") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AMOUNTTextBox" runat="server" Text='<%# Bind("AMOUNT") %>' />
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
                            <asp:TextBox ID="INVOICE_IDTextBox" runat="server" 
                                Text='<%# Bind("INVOICE_ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PCODETextBox" runat="server" Text='<%# Bind("PCODE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="HSN_CODETextBox" runat="server" 
                                Text='<%# Bind("HSN_CODE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SIZETextBox" runat="server" Text='<%# Bind("SIZE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QTYTextBox" runat="server" Text='<%# Bind("QTY") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="UOMTextBox" runat="server" Text='<%# Bind("UOM") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AMOUNTTextBox" runat="server" Text='<%# Bind("AMOUNT") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="INVOICE_IDLabel" runat="server" 
                                Text='<%# Eval("INVOICE_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PCODELabel" runat="server" Text='<%# Eval("PCODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HSN_CODELabel" runat="server" Text='<%# Eval("HSN_CODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UOMLabel" runat="server" Text='<%# Eval("UOM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AMOUNTLabel" runat="server" Text='<%# Eval("AMOUNT") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">
                                            INVOICE_ID</th>
                                        <th runat="server">
                                            PCODE</th>
                                        <th runat="server">
                                            HSN_CODE</th>
                                        <th runat="server">
                                            SIZE</th>
                                        <th runat="server">
                                            QTY</th>
                                        <th runat="server">
                                            UOM</th>
                                        <th runat="server">
                                            PRICE</th>
                                        <th runat="server">
                                            AMOUNT</th>
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="INVOICE_IDLabel" runat="server" 
                                Text='<%# Eval("INVOICE_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PCODELabel" runat="server" Text='<%# Eval("PCODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="HSN_CODELabel" runat="server" Text='<%# Eval("HSN_CODE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QTYLabel" runat="server" Text='<%# Eval("QTY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="UOMLabel" runat="server" Text='<%# Eval("UOM") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PRICELabel" runat="server" Text='<%# Eval("PRICE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AMOUNTLabel" runat="server" Text='<%# Eval("AMOUNT") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <strong><span class="style1">INVOICE&nbsp; CREDENTIALS</span></strong><br />
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="ID" 
                DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="INVOICENOLabel" runat="server" Text='<%# Eval("INVOICENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IDATELabel" runat="server" Text='<%# Eval("IDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PONOLabel" runat="server" Text='<%# Eval("PONO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PODATELabel" runat="server" Text='<%# Eval("PODATE") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="REVERSECHARGECheckBox" runat="server" 
                                Checked='<%# Eval("REVERSECHARGE") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="PLACEOFSUPPLYLabel" runat="server" 
                                Text='<%# Eval("PLACEOFSUPPLY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PARTYIDLabel" runat="server" Text='<%# Eval("PARTYID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EWAYBILLNOLabel" runat="server" 
                                Text='<%# Eval("EWAYBILLNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRNOLabel" runat="server" Text='<%# Eval("GRNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRDATELabel" runat="server" Text='<%# Eval("GRDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="VEHICLENOLabel" runat="server" Text='<%# Eval("VEHICLENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DISCOUNTLabel" runat="server" Text='<%# Eval("DISCOUNT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CGSTLabel" runat="server" Text='<%# Eval("CGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IGSTLabel" runat="server" Text='<%# Eval("IGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SGSTLabel" runat="server" Text='<%# Eval("SGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALAMTLabel" runat="server" Text='<%# Eval("TOTALAMT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FREIGHTLabel" runat="server" Text='<%# Eval("FREIGHT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRANDTOTALLabel" runat="server" 
                                Text='<%# Eval("GRANDTOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GSTONREVERSECHARGELabel" runat="server" 
                                Text='<%# Eval("GSTONREVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RNAMELabel" runat="server" Text='<%# Eval("RNAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RADDRESSLabel" runat="server" Text='<%# Eval("RADDRESS") %>' />
                        </td>
                        <td>
                            <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="INVOICENOTextBox" runat="server" 
                                Text='<%# Bind("INVOICENO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IDATETextBox" runat="server" Text='<%# Bind("IDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PONOTextBox" runat="server" Text='<%# Bind("PONO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PODATETextBox" runat="server" Text='<%# Bind("PODATE") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="REVERSECHARGECheckBox" runat="server" 
                                Checked='<%# Bind("REVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PLACEOFSUPPLYTextBox" runat="server" 
                                Text='<%# Bind("PLACEOFSUPPLY") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PARTYIDTextBox" runat="server" Text='<%# Bind("PARTYID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EWAYBILLNOTextBox" runat="server" 
                                Text='<%# Bind("EWAYBILLNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRNOTextBox" runat="server" Text='<%# Bind("GRNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRDATETextBox" runat="server" Text='<%# Bind("GRDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="VEHICLENOTextBox" runat="server" 
                                Text='<%# Bind("VEHICLENO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TOTALTextBox" runat="server" Text='<%# Bind("TOTAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DISCOUNTTextBox" runat="server" 
                                Text='<%# Bind("DISCOUNT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CGSTTextBox" runat="server" Text='<%# Bind("CGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IGSTTextBox" runat="server" Text='<%# Bind("IGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SGSTTextBox" runat="server" Text='<%# Bind("SGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TOTALAMTTextBox" runat="server" 
                                Text='<%# Bind("TOTALAMT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FREIGHTTextBox" runat="server" Text='<%# Bind("FREIGHT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRANDTOTALTextBox" runat="server" 
                                Text='<%# Bind("GRANDTOTAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GSTONREVERSECHARGETextBox" runat="server" 
                                Text='<%# Bind("GSTONREVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RNAMETextBox" runat="server" Text='<%# Bind("RNAME") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RADDRESSTextBox" runat="server" 
                                Text='<%# Bind("RADDRESS") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' />
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
                            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="INVOICENOTextBox" runat="server" 
                                Text='<%# Bind("INVOICENO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IDATETextBox" runat="server" Text='<%# Bind("IDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PONOTextBox" runat="server" Text='<%# Bind("PONO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PODATETextBox" runat="server" Text='<%# Bind("PODATE") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="REVERSECHARGECheckBox" runat="server" 
                                Checked='<%# Bind("REVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PLACEOFSUPPLYTextBox" runat="server" 
                                Text='<%# Bind("PLACEOFSUPPLY") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PARTYIDTextBox" runat="server" Text='<%# Bind("PARTYID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EWAYBILLNOTextBox" runat="server" 
                                Text='<%# Bind("EWAYBILLNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRNOTextBox" runat="server" Text='<%# Bind("GRNO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRDATETextBox" runat="server" Text='<%# Bind("GRDATE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="VEHICLENOTextBox" runat="server" 
                                Text='<%# Bind("VEHICLENO") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TOTALTextBox" runat="server" Text='<%# Bind("TOTAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DISCOUNTTextBox" runat="server" 
                                Text='<%# Bind("DISCOUNT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CGSTTextBox" runat="server" Text='<%# Bind("CGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="IGSTTextBox" runat="server" Text='<%# Bind("IGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SGSTTextBox" runat="server" Text='<%# Bind("SGST") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TOTALAMTTextBox" runat="server" 
                                Text='<%# Bind("TOTALAMT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FREIGHTTextBox" runat="server" Text='<%# Bind("FREIGHT") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GRANDTOTALTextBox" runat="server" 
                                Text='<%# Bind("GRANDTOTAL") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GSTONREVERSECHARGETextBox" runat="server" 
                                Text='<%# Bind("GSTONREVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RNAMETextBox" runat="server" Text='<%# Bind("RNAME") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RADDRESSTextBox" runat="server" 
                                Text='<%# Bind("RADDRESS") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="INVOICENOLabel" runat="server" Text='<%# Eval("INVOICENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IDATELabel" runat="server" Text='<%# Eval("IDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PONOLabel" runat="server" Text='<%# Eval("PONO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PODATELabel" runat="server" Text='<%# Eval("PODATE") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="REVERSECHARGECheckBox" runat="server" 
                                Checked='<%# Eval("REVERSECHARGE") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="PLACEOFSUPPLYLabel" runat="server" 
                                Text='<%# Eval("PLACEOFSUPPLY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PARTYIDLabel" runat="server" Text='<%# Eval("PARTYID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EWAYBILLNOLabel" runat="server" 
                                Text='<%# Eval("EWAYBILLNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRNOLabel" runat="server" Text='<%# Eval("GRNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRDATELabel" runat="server" Text='<%# Eval("GRDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="VEHICLENOLabel" runat="server" Text='<%# Eval("VEHICLENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DISCOUNTLabel" runat="server" Text='<%# Eval("DISCOUNT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CGSTLabel" runat="server" Text='<%# Eval("CGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IGSTLabel" runat="server" Text='<%# Eval("IGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SGSTLabel" runat="server" Text='<%# Eval("SGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALAMTLabel" runat="server" Text='<%# Eval("TOTALAMT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FREIGHTLabel" runat="server" Text='<%# Eval("FREIGHT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRANDTOTALLabel" runat="server" 
                                Text='<%# Eval("GRANDTOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GSTONREVERSECHARGELabel" runat="server" 
                                Text='<%# Eval("GSTONREVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RNAMELabel" runat="server" Text='<%# Eval("RNAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RADDRESSLabel" runat="server" Text='<%# Eval("RADDRESS") %>' />
                        </td>
                        <td>
                            <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">
                                        </th>
                                        <th runat="server">
                                            ID</th>
                                        <th runat="server">
                                            INVOICENO</th>
                                        <th runat="server">
                                            IDATE</th>
                                        <th runat="server">
                                            PONO</th>
                                        <th runat="server">
                                            PODATE</th>
                                        <th runat="server">
                                            REVERSECHARGE</th>
                                        <th runat="server">
                                            PLACEOFSUPPLY</th>
                                        <th runat="server">
                                            PARTYID</th>
                                        <th runat="server">
                                            EWAYBILLNO</th>
                                        <th runat="server">
                                            GRNO</th>
                                        <th runat="server">
                                            GRDATE</th>
                                        <th runat="server">
                                            VEHICLENO</th>
                                        <th runat="server">
                                            TOTAL</th>
                                        <th runat="server">
                                            DISCOUNT</th>
                                        <th runat="server">
                                            CGST</th>
                                        <th runat="server">
                                            IGST</th>
                                        <th runat="server">
                                            SGST</th>
                                        <th runat="server">
                                            TOTALAMT</th>
                                        <th runat="server">
                                            FREIGHT</th>
                                        <th runat="server">
                                            GRANDTOTAL</th>
                                        <th runat="server">
                                            GSTONREVERSECHARGE</th>
                                        <th runat="server">
                                            RNAME</th>
                                        <th runat="server">
                                            RADDRESS</th>
                                        <th runat="server">
                                            remark</th>
                                    </tr>
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
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
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="INVOICENOLabel" runat="server" Text='<%# Eval("INVOICENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IDATELabel" runat="server" Text='<%# Eval("IDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PONOLabel" runat="server" Text='<%# Eval("PONO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PODATELabel" runat="server" Text='<%# Eval("PODATE") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="REVERSECHARGECheckBox" runat="server" 
                                Checked='<%# Eval("REVERSECHARGE") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="PLACEOFSUPPLYLabel" runat="server" 
                                Text='<%# Eval("PLACEOFSUPPLY") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PARTYIDLabel" runat="server" Text='<%# Eval("PARTYID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EWAYBILLNOLabel" runat="server" 
                                Text='<%# Eval("EWAYBILLNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRNOLabel" runat="server" Text='<%# Eval("GRNO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRDATELabel" runat="server" Text='<%# Eval("GRDATE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="VEHICLENOLabel" runat="server" Text='<%# Eval("VEHICLENO") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALLabel" runat="server" Text='<%# Eval("TOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DISCOUNTLabel" runat="server" Text='<%# Eval("DISCOUNT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CGSTLabel" runat="server" Text='<%# Eval("CGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="IGSTLabel" runat="server" Text='<%# Eval("IGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SGSTLabel" runat="server" Text='<%# Eval("SGST") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TOTALAMTLabel" runat="server" Text='<%# Eval("TOTALAMT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FREIGHTLabel" runat="server" Text='<%# Eval("FREIGHT") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GRANDTOTALLabel" runat="server" 
                                Text='<%# Eval("GRANDTOTAL") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GSTONREVERSECHARGELabel" runat="server" 
                                Text='<%# Eval("GSTONREVERSECHARGE") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RNAMELabel" runat="server" Text='<%# Eval("RNAME") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RADDRESSLabel" runat="server" Text='<%# Eval("RADDRESS") %>' />
                        </td>
                        <td>
                            <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </asp:Panel>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
        SelectCommand="SELECT * FROM [INVOICEITEMS]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" 
        DeleteCommand="DELETE FROM [INVOICES] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [INVOICES] ([ID], [INVOICENO], [IDATE], [PONO], [PODATE], [REVERSECHARGE], [PLACEOFSUPPLY], [PARTYID], [EWAYBILLNO], [GRNO], [GRDATE], [VEHICLENO], [TOTAL], [DISCOUNT], [CGST], [IGST], [SGST], [TOTALAMT], [FREIGHT], [GRANDTOTAL], [GSTONREVERSECHARGE], [RNAME], [RADDRESS], [remark]) VALUES (@ID, @INVOICENO, @IDATE, @PONO, @PODATE, @REVERSECHARGE, @PLACEOFSUPPLY, @PARTYID, @EWAYBILLNO, @GRNO, @GRDATE, @VEHICLENO, @TOTAL, @DISCOUNT, @CGST, @IGST, @SGST, @TOTALAMT, @FREIGHT, @GRANDTOTAL, @GSTONREVERSECHARGE, @RNAME, @RADDRESS, @remark)" 
        SelectCommand="SELECT * FROM [INVOICES]" 
        UpdateCommand="UPDATE [INVOICES] SET [INVOICENO] = @INVOICENO, [IDATE] = @IDATE, [PONO] = @PONO, [PODATE] = @PODATE, [REVERSECHARGE] = @REVERSECHARGE, [PLACEOFSUPPLY] = @PLACEOFSUPPLY, [PARTYID] = @PARTYID, [EWAYBILLNO] = @EWAYBILLNO, [GRNO] = @GRNO, [GRDATE] = @GRDATE, [VEHICLENO] = @VEHICLENO, [TOTAL] = @TOTAL, [DISCOUNT] = @DISCOUNT, [CGST] = @CGST, [IGST] = @IGST, [SGST] = @SGST, [TOTALAMT] = @TOTALAMT, [FREIGHT] = @FREIGHT, [GRANDTOTAL] = @GRANDTOTAL, [GSTONREVERSECHARGE] = @GSTONREVERSECHARGE, [RNAME] = @RNAME, [RADDRESS] = @RADDRESS, [remark] = @remark WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="INVOICENO" Type="Int32" />
            <asp:Parameter Name="IDATE" Type="DateTime" />
            <asp:Parameter Name="PONO" Type="String" />
            <asp:Parameter Name="PODATE" Type="DateTime" />
            <asp:Parameter Name="REVERSECHARGE" Type="Boolean" />
            <asp:Parameter Name="PLACEOFSUPPLY" Type="String" />
            <asp:Parameter Name="PARTYID" Type="Int32" />
            <asp:Parameter Name="EWAYBILLNO" Type="String" />
            <asp:Parameter Name="GRNO" Type="String" />
            <asp:Parameter Name="GRDATE" Type="DateTime" />
            <asp:Parameter Name="VEHICLENO" Type="String" />
            <asp:Parameter Name="TOTAL" Type="Double" />
            <asp:Parameter Name="DISCOUNT" Type="Double" />
            <asp:Parameter Name="CGST" Type="Double" />
            <asp:Parameter Name="IGST" Type="Double" />
            <asp:Parameter Name="SGST" Type="Double" />
            <asp:Parameter Name="TOTALAMT" Type="Double" />
            <asp:Parameter Name="FREIGHT" Type="Double" />
            <asp:Parameter Name="GRANDTOTAL" Type="Double" />
            <asp:Parameter Name="GSTONREVERSECHARGE" Type="Double" />
            <asp:Parameter Name="RNAME" Type="String" />
            <asp:Parameter Name="RADDRESS" Type="String" />
            <asp:Parameter Name="remark" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="INVOICENO" Type="Int32" />
            <asp:Parameter Name="IDATE" Type="DateTime" />
            <asp:Parameter Name="PONO" Type="String" />
            <asp:Parameter Name="PODATE" Type="DateTime" />
            <asp:Parameter Name="REVERSECHARGE" Type="Boolean" />
            <asp:Parameter Name="PLACEOFSUPPLY" Type="String" />
            <asp:Parameter Name="PARTYID" Type="Int32" />
            <asp:Parameter Name="EWAYBILLNO" Type="String" />
            <asp:Parameter Name="GRNO" Type="String" />
            <asp:Parameter Name="GRDATE" Type="DateTime" />
            <asp:Parameter Name="VEHICLENO" Type="String" />
            <asp:Parameter Name="TOTAL" Type="Double" />
            <asp:Parameter Name="DISCOUNT" Type="Double" />
            <asp:Parameter Name="CGST" Type="Double" />
            <asp:Parameter Name="IGST" Type="Double" />
            <asp:Parameter Name="SGST" Type="Double" />
            <asp:Parameter Name="TOTALAMT" Type="Double" />
            <asp:Parameter Name="FREIGHT" Type="Double" />
            <asp:Parameter Name="GRANDTOTAL" Type="Double" />
            <asp:Parameter Name="GSTONREVERSECHARGE" Type="Double" />
            <asp:Parameter Name="RNAME" Type="String" />
            <asp:Parameter Name="RADDRESS" Type="String" />
            <asp:Parameter Name="remark" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
                <asp:Button ID="Button3" runat="server" BorderColor="Lime" Height="39px" 
                    onclick="Button3_Click" 
                    
            style="font-weight: 700; color: #000000; background-color: #CC3300" Text="BACK" 
                    Width="78px" />
                </p>
    </form>
</body>
</html>
