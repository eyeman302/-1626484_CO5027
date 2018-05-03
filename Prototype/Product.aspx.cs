using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Prototype
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".png";
            CurrentImage.ImageUrl = "~/ProductImage/" + filename;
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/member/Default");
        }
    }
}