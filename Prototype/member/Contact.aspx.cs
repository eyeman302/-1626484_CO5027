using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Prototype.member
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("airsehat32@gmail.com", "airsehat32@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = "Sender E-mail: " + txtEmail.Text + "\n" + "Subject: " + txtSubject.Text + "\n" + "Body: " + txtBody.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("airsehat32@gmail.com", "eyeman302");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success,mail sent using SMTP with secure connection and credentials</p>";

            }

            catch (Exception ex)
            {
                litResult.Text = "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";

            }
        }
    }
}