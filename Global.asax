<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["UsersOnline"] = 0;
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        Utilities.LogError(Server.GetLastError());
    }

    
    void Session_Start(object sender, EventArgs e) 
    {
        Application.Lock();
        Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
        Application.UnLock();
    }

    void Session_End(object sender, EventArgs e) 
    {
        Application.Lock();
        Application["UsersOnline"] = (int)Application["UsersOnline"] - 1;
        Application.UnLock();

    }
       
</script>
