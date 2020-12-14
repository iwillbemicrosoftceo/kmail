using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


namespace SmtpEmail
{
    public partial class _Default : Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
        try {
                MailMessage mm = new MailMessage();
                mm.From = new MailAddress(txtFrom.Text.Trim());
                mm.To.Add(txtTo.Text.Trim());
                mm.Subject = txtSubject.Text.Trim();
                mm.Body = txtBody.Text.Trim();

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(txtFrom.Text.Trim(), txtPassword.Text.Trim());
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

                smtp.Send(mm);

                lblDN.Text = "Email Sent!";

            }
            catch{
                lblDN.Text = "Error happend sorry";
                
            }
            
            
        }
    }
}