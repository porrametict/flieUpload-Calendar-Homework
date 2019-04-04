<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label> Upload File</label>
        </div>
        <div>
                <asp:DropDownList ID="DropDownListDay" runat="server">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownListMounth" runat="server">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownListYear" runat="server">
    </asp:DropDownList>
    <br />    
            <asp:FileUpload ID="FileUpload1" runat="server" />         
   <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="บันทึก" />
<asp:Label ID="LabelInserted" runat="server" ForeColor="#33CC33" Text="Successful" ViewStateMode="Disabled" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
