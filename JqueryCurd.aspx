<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JqueryCurd.aspx.cs" Inherits="JqueryCurd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
#tbl {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 70%;
}
 
#tbl td, #tbl th {
    border: 1px solid #ddd;
    padding: 8px;
}
 
#tbl tr:nth-child(even){background-color: #f2f2f2;}
 
#tbl tr:hover {background-color: #ddd;}
 
#tbl th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
 
 
</style>
    <script type="text/javascript" src="/scripts/jquery.min.js"></script> 
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <table>
        <tr><td>
            Name:
            </td>
            <td><input type="text" id="txtName" /></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="text" id="txtAge" /></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" id="txtAddress" /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="button" id="btnsubmit" value="Submit" onclick="SaveData()" /></td>
        </tr>
    </table>
        <table id="tbl" >
            <tr>
                <th>Enmployee Name</th>
                <th>Employee Age</th>
                <th>Employee Address</th>
                <th></th>
                <th></th>
            </tr>
 
        </table>
    </div>
    </form>
</body>
</html>


 

