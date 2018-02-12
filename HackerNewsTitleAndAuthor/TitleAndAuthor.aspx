<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TitleAndAuthor.aspx.cs" Inherits="HackerNewsTitleAndAuthor.TitleAndAuthor" %>

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

    /* Add animation to "page content" */
    .animate-bottom {
      position: relative;
      -webkit-animation-name: animatebottom;
      -webkit-animation-duration: 1s;
      animation-name: animatebottom;
      animation-duration: 1s
    }

    @-webkit-keyframes animatebottom {
      from { bottom:-100px; opacity:0 } 
      to { bottom:0px; opacity:1 }
    }

    @keyframes animatebottom { 
      from{ bottom:-100px; opacity:0 } 
      to{ bottom:0; opacity:1 }
    }

    #myDiv {
      display: none;
      text-align: left;
    }
    </style>

</head>
<body onload="showPage()" >
    <script>

        function showPage() {
            document.getElementById("loader").style.display = "none";
            document.getElementById("myDiv").style.display = "block";
        }
    </script>
    <form id="form1" runat="server">
        <div id="loader"></div>

        <div style="display:none;" id="myDiv" class="animate-bottom">
            <asp:GridView ID="grdStoryList" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" ItemStyle-Width="500" />
                    <asp:BoundField DataField="by" HeaderText="Author" ItemStyle-Width="200" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
