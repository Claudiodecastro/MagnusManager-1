﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }

    void Application_BeginRequest(object sender, EventArgs e)
{
string languages = "";
if (Request.Headers["Accept-Language"] != null)
{
languages = Request.Headers["Accept-Language"].ToString();
}
string culture = languages.Substring(0, 2);
string cultureinfo = languages.Substring(0, 5);
System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture(culture);
System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(cultureinfo);
}
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
