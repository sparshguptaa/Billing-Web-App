<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="Billing_App.Form1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1
        {
            width: 1077px;
            height: 435px;
        }
        #form1
        {
            height: 236px;
        }
        .style1
        {
            font-size: larger;
            color: #FFFFFF;
            background-color: #000000;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function TextArea1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
    
    </div>
    <asp:Panel ID="Panel2" runat="server" Height="262px" BackColor="Black" 
        style="color: #FFFFFF; font-weight: 700; margin-left: 133px" Width="876px">
        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<asp:Panel ID="Panel4" runat="server" Height="191px" style="margin-left: 31px" 
            Width="836px">
            <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="None" 
                Height="171px" ImageUrl="~/client.jpg" Width="190px" 
                onclick="ImageButton1_Click" PostBackUrl="~/partydetails.aspx" />
            &nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="170px" 
                ImageUrl="~/413224-PDFK95-709.jpg" Width="179px" 
                PostBackUrl="~/invoice.aspx" onclick="ImageButton3_Click" />
            &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" BorderStyle="None" 
                Height="173px" ImageUrl="~/financialYear.jpg" Width="194px" 
                PostBackUrl="~/FinanacialYear.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" BorderStyle="None" 
                Height="172px" ImageUrl="~/pd.jpg" Width="191px" 
                PostBackUrl="~/productdetails.aspx" />
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PARTY_DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        INVOICE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FINANCIAL _YEAR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCT_DETAILS<br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" 
        style="font-weight: 700; font-size: xx-large">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style1">CLICK TO SELECT THE 
        OPTIONS</span><br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    </asp:Panel>
    </form>
</body>
</html>
