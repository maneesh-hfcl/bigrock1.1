using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using WebSite3;

public partial class Account_Manage : System.Web.UI.Page
{
    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected bool CanRemoveExternalLogins
    {
        get;
        private set;
    }


    protected void Page_Load()
    {
        
    }

    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        
    }

    protected void SetPassword_Click(object sender, EventArgs e)
    {
    }

 

    public void RemoveLogin(string loginProvider, string providerKey)
    {
    }

    private void AddErrors(IdentityResult result)
    {
    }
}