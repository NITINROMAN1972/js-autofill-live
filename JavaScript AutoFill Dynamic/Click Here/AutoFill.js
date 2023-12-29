
// dynamic self invoked function which will autofill while typing

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