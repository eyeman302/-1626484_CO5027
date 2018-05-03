using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Prototype.member
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {

            var pricingLabel = FormView1.FindControl("ProductPriceLabel") as Label;
            //string pricestring = pricingLabel.ToString();
            var productPricing = pricingLabel.Text;
                
            decimal postagePackagingCost = 3.95m;
            decimal productPrice = decimal.Parse(productPricing);
            int quantityProduct = int.Parse(ddlistQuantity.SelectedValue);
            decimal subTotal = (quantityProduct * productPrice);
            decimal Total = subTotal + postagePackagingCost;

            var clientId = "Ad1YjbYnAo1qDCIoTgHV3dNjnLRiHsI5sN1RmWHnTDJYn7KOVBtdjwhFwDzmb4SJGr1LPvXdGXVc7HGu";
            var clientSecret = "EJs-D45X7amITcUcgLgpv1-za1NaC6zt9p9k8wCYTeyn1TNReA8bCpufB7LP9zpLV_Y4AqDsq-Eu8nSD";
            var sdkConfig = new Dictionary<string, string>
            {
                { "mode", "sandbox" },
                { "clientId", clientId },
                { "clientSecret", clientSecret }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;

            var Productitem = new Item();
            Productitem.name = "Product1";
            Productitem.currency = "SGD";
            Productitem.price = productPrice.ToString();
            Productitem.sku = "PRO1"; //use getValue to obtain from database
            Productitem.quantity = quantityProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "SGD";
            transactionAmount.total = Total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your Order Of";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { Productitem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirect = new RedirectUrls();
            redirect.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "/Default.aspx";
            redirect.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "/CompletePurchase.aspx";


            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirect
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }
        }
    }
}