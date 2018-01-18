using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace Database.Utility.Utilities
{
    public class EmailUtil
    {
        public static void SendEMail(string emailid, string subject, string body)
        {
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            string MailAccount = System.Configuration.ConfigurationManager.AppSettings["MailAccount"];
            string MailPassword = System.Configuration.ConfigurationManager.AppSettings["MailPassword"];

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential(MailAccount, MailPassword);
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            msg.From = new MailAddress(MailAccount);
            msg.To.Add(new MailAddress(emailid));

            msg.Subject = subject;
            msg.IsBodyHtml = true;
            msg.Body = body;

            client.Send(msg);
        }
    }
}