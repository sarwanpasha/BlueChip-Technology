﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
// set the 500 status code
Response.Status = "500 Internal Server Error";
}
</script>
<p>
    Sorry<br />
    Page is not Found</p>
