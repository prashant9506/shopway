﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for MySMSSender
/// </summary>
public class MySmsSender
{
    string MyUserId, MySenderId, MySecurityCode;
    public MySmsSender()
    {
        MyUserId = "BRIJESH";
        MySenderId = "SPILKO";
        MySecurityCode = "8620e45a26XX";
    }
    public bool SendSMS(string MobileNo, string Message)
    {
        string API = "http://sms.bulkssms.com/submitsms.jsp?user=" + MyUserId + "&key=" + MySecurityCode + "&mobile=" + MobileNo + "&message=" + Message + "&senderid=" + MySenderId + "&accusage=1";
        WebClient wc = new WebClient();
        try
        {
            wc.DownloadString(API);
            return true;
        }
        catch
        {
            return false;
        }
    }
}