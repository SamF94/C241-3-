<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Comp241Lab4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Comp 241 Lab 4</title>
    
    <style>
        input[type=text]{
            padding:5px;
            border:2px solid #ccc;
            -webkit-border-radius: 5px;
            border-radius: 5px
        }

        input[type=text]:focus{
            border-color: #333;
        }

        input[type=submit]{
            padding: 5px 15px;
            background: #ccc;
            border: 0 none;
            cursor: pointer;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        Symbol:
        <input runat="server" type="text" id="coName"/>
        
        <button type="submit" runat="server" onserverclick="getResult">Get Quote</button><br />

        <hr />
            Name: <p runat="server" id="lblName"></p>
        
        <hr />
            Price: $<p runat="server" id="lblPrice"></p>

        <hr />
            Timestamp: <p runat="server" id="lblTimestamp"></p>

        <hr />

        <input type="checkbox" id="cached" runat="server"/>Is cached?<br />
        <button type="submit" id="clearCache" runat="server">Clear Cache</button>


    </div>
    </form>
</body>
</html>
