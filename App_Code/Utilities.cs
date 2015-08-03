using System;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
public static class Utilities
{

    static Utilities()
    {

    }
    public static void SendMail(string from, string to, string subject, MailMessage body)
    {
        String toAddress = "sarwanpasha@gmail.com";
        String fromPassword = "incorrect123@";
        // Configure mail client
        //SmtpClient mailClient = new SmtpClient(BalloonShopConfiguration.MailServer);
        SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
        mailClient.EnableSsl = true;
        mailClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        mailClient.Credentials = new System.Net.NetworkCredential(toAddress, fromPassword);
        mailClient.Timeout = 20000;
        // Create the mail message
        mailClient.Send(body);
        
    }
    // Send error log mail
    public static void LogError(Exception ex)
    {
        // get the current date and time
        string dateTime = DateTime.Now.ToLongDateString() + ", at " + DateTime.Now.ToShortTimeString();
        System.Web.HttpContext context = System.Web.HttpContext.Current;

            string from = "sarwanpasha@gmail.com";
            string to = "sarwanpasha@gmail.com";
            string subject = "BlueChip- Technology Error Report";
      ////////////////////
            // Get the error details
            String browserinfo = browserInformation();
            String gettingIP = getIP();
            String MAC = getMac();
            // Create the MailMessage object
            System.Net.Mail.MailMessage mm = new System.Net.Mail.MailMessage(from, to);
            mm.Subject = subject;
            mm.IsBodyHtml = true;
            mm.Priority = System.Net.Mail.MailPriority.High;
            mm.Body = string.Format(@"
<html>
<body>
  <h1>An Error Has Occurred!</h1>
  <table cellpadding=""5"" cellspacing=""0"" border=""1"">
  <tr>
  <tdtext-align: right;font-weight: bold"">URL:</td>
  <td>{0}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">Browser:</td>
  <td>{1}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">TargetSite:</td>
  <td>{2}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">Source Type:</td>
  <td>{3}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">Message:</td>
  <td>{4}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">IP Address:</td>
  <td>{5}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">MAC Address:</td>
  <td>{6}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">Time:</td>
  <td>{7}</td>
  </tr>
  <tr>
  <tdtext-align: right;font-weight: bold"">Stack Trace:</td>
  <td>{8}</td>
  </tr> 
  </table>
</body>
</html>",
                context.Request.RawUrl, browserinfo, ex.TargetSite, ex.Source, ex.Message, gettingIP, MAC, dateTime, ex.StackTrace.Replace(Environment.NewLine, "<br />"));

            SendMail(from, to, subject, mm);

            // log the exception using your logger
           // Server.ClearError();
           // Response.Redirect("~/Main Page.aspx");
        //////////////////////
    }




    static String getMac()
    {
        //get all nics
        System.Net.NetworkInformation.NetworkInterface[] nics = System.Net.NetworkInformation.NetworkInterface.GetAllNetworkInterfaces();
        return nics[0].GetPhysicalAddress().ToString();
    }

    static String getIP()
    {
        string externalIP = "";
        externalIP = (new System.Net.WebClient()).DownloadString("http://checkip.dyndns.org/");
        externalIP = (new Regex(@"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}")).Matches(externalIP)[0].ToString();
        return externalIP;
    }
    static String browserInformation()
    {
        System.Web.HttpBrowserCapabilities browser = HttpContext.Current.Request.Browser;
        string s = "Browser Capabilities\n"
            + "Type = " + browser.Type + "\n"
            + "Name = " + browser.Browser + "\n"
            + "Version = " + browser.Version + "\n"
            + "Major Version = " + browser.MajorVersion + "\n"
            + "Minor Version = " + browser.MinorVersion + "\n"
            + "Platform = " + browser.Platform + "\n"
            + "Is Beta = " + browser.Beta + "\n"
            + "Is Crawler = " + browser.Crawler + "\n"
            + "Is AOL = " + browser.AOL + "\n"
            + "Is Win16 = " + browser.Win16 + "\n"
            + "Is Win32 = " + browser.Win32 + "\n"
            + "Supports Frames = " + browser.Frames + "\n"
            + "Supports Tables = " + browser.Tables + "\n"
            + "Supports Cookies = " + browser.Cookies + "\n"
            + "Supports VBScript = " + browser.VBScript + "\n"
            + "Supports JavaScript = " +
                browser.EcmaScriptVersion.ToString() + "\n"
            + "Supports Java Applets = " + browser.JavaApplets + "\n"
            + "Supports ActiveX Controls = " + browser.ActiveXControls
                  + "\n"
            + "Supports JavaScript Version = " +
                browser["JavaScriptVersion"] + "\n";

        return s;
    }
}