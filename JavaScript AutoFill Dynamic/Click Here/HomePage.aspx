<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Click_Here_HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Item Price</td>
                    <td>
                        <asp:TextBox ID="txtItem" runat="server"></asp:TextBox>
                    </td>
                    <td>Item Qty.</td>
                    <td>
                        <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
                    </td>
                    <td>Total Amount</td>
                    <td>
                        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <script type="text/javascript">
        (function calculateAmount() {
            const priceTextbox = document.getElementById('<%= txtItem.ClientID %>');
            const qtyTextbox = document.getElementById('<%= txtQty.ClientID %>');
            const amountTextbox = document.getElementById('<%= txtAmount.ClientID %>');

            priceTextbox.addEventListener("input", updateAmount);
            qtyTextbox.addEventListener("input", updateAmount);

            function updateAmount() {
                const price = parseFloat(priceTextbox.value) || 0;
                const qty = parseFloat(qtyTextbox.value) || 0;

                const result = Math.ceil(price * qty);
                amountTextbox.value = result.toString();
            }

            // Call the `calculateAmount` function when the DOM is loaded
            document.addEventListener("DOMContentLoaded", function () {
                // The entire code is already encapsulated within this self-invoking function.
                // You can add any additional code that should run when the DOM is loaded here.
            });
        })();
    </script>

    <%--<script src="AutoFill.js"></script>--%>
</body>
</html>
