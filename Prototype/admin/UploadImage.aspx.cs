using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Prototype.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            string productId = Request.QueryString["Id"];
            string filename = productId + ".png";
            CurrentImage.ImageUrl = "~/ProductImage/" + filename;

            string savelocation = Server.MapPath("~/ProductImage/" + filename);
            btnDelete.Visible = false;
            lblDeleted.Visible = false;
            FileInfo fileInfo = new FileInfo(savelocation);
            if (fileInfo.Exists)
            {
                btnDelete.Visible = true;
                
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = imageFileUploadControl.PostedFile;
            string productId = Request.QueryString["Id"];
            string imagename = Path.GetFileName(postedFile.FileName);
            string fileExtend = Path.GetExtension(imagename);
            string filename = productId + ".png";
            string savelocation = Server.MapPath("~/ProductImage/" + filename);

            
            

            if (fileExtend.ToLower() == ".jpg" || fileExtend.ToLower() == ".png" || fileExtend.ToLower() == ".jpeg")
            {
                imageFileUploadControl.SaveAs(savelocation);
                lblError.Visible = true;
                lblError.ForeColor = System.Drawing.Color.Blue;
                lblError.Text = "Image Uploaded";
            }
            else
            {
                lblError.Visible = true;
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Only images with .jpg, .jpeg and .png can be uploaded";

            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".png";
            string ImageLoc = "~/ProductImage/" + filename;
            string imagePath = Server.MapPath(@"~/ProductImage/" + filename);
            File.Delete("imagePath");

            lblDeleted.Visible = true;
            lblDeleted.Text = "Image Deleted";

            btnDelete.Visible = false;
            CurrentImage.Visible = false;
        }
    }
}