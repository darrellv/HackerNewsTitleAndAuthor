<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HackerNewsTitleAndAuthor.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
    /* Center the loader */
    #loader {
      position: absolute;
      left: 50%;
      top: 50%;
      z-index: 1;
      width: 150px;
      height: 150px;
      margin: -75px 0 0 -75px;
      border: 16px solid #f3f3f3;
      border-radius: 50%;
      border-top: 16px solid #3498db;
      width: 120px;
      height: 120px;
      -webkit-animation: spin 2s linear infinite;
      animation: spin 2s linear infinite;
    }

    @-webkit-keyframes spin {
      0% { -webkit-transform: rotate(0deg); }
      100% { -webkit-transform: rotate(360deg); }
    }

    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }


    </style>

</head>
<body onload="showPage()" >
    <script>

        function showPage() {
            
            document.getElementById("loader").style.display = "inline";
            window.location.href = "TitleAndAuthor.aspx";
        }
    </script>
    <form id="form1" runat="server">
        <div id="loader"></div>

    </form>
</body>
</html>
