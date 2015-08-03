using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getip();
    }

    public void getip()
    {
        //get all nics
        NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
        //display the physical address of the first nic in the array,
        //which should correspond to our mac address
        lb1.Text = nics[0].GetPhysicalAddress().ToString();
    }

}