<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.4.1.js"></script>

    <script>    
        function a() {
            var v = $.ajax({
                type: "get",
                url: "http://sru.bibsys.no/search/biblio?version=1.2&operation=searchRetrieve&startRecord=1&maximumRecords=10&query=bs.isbn=978-82-05-37754-7&recordSchema=dc",

             
                success: function (result) {
                    alert(result);

            
                }
            });


        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <button value="Get"  id="btn" onclick="a()"> Save</button>
    </div>
    </form>
</body>
</html>
