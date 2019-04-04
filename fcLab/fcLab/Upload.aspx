<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server"  class="text-center container">
        <div class="text-center">
            <label class="text-center display-4"> Upload File</label>
        </div>
        <hr />
        <div class="row">
            <div class="form-group col text-left">
                <label>วัน</label>
                <asp:DropDownList ID="DropDownListDay" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="form-group col text-left">
                <label>เดีอน</label>
                <asp:DropDownList ID="DropDownListMounth" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="form-group col text-left">
                <label >ปี</label>
                <asp:DropDownList ID="DropDownListYear" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>

           <div class="col-12">
                  <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" />
           </div>
            <div class="col-12 text-left mt-">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success" Text="บันทึก" />
                <asp:Label ID="LabelInserted" runat="server" CssClass="alert alert-success m-4" Text="Successful" ViewStateMode="Disabled" Visible="False"></asp:Label>
           </div>

        </div>
    </form>
</body>
</html>
