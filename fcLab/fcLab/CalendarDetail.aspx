﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalendarDetail.aspx.cs" Inherits="CalendarDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalendarDetail</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server" class="container text-center">
         <div class="text-center">
            <label class="text-center display-4"> Calendar Detail </label>
        </div>
        <div class="row m-5">
            <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" EmptyDataText="ไม่มีข้อมูล" EmptyDataRowStyle-CssClass="alert alert-dark" ></asp:GridView>
        </div>
    </form>
</body>
</html>
