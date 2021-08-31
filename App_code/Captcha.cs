using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Captcha
/// </summary>
public class Captcha
{
	public Captcha()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string getcode() {
        Random r = new Random();
        char ch;
        string randomcode = "";
        ch = (char)r.Next(65, 70);
        randomcode = randomcode + ch;
        ch = (char)r.Next(48, 57);
        randomcode = randomcode + ch;
        ch = (char)r.Next(71, 78);
        randomcode = randomcode + ch;
        ch = (char)r.Next(79, 85);
        randomcode = randomcode + ch;
        ch = (char)r.Next(50, 55);
        randomcode = randomcode + ch;
        ch = (char)r.Next(80, 90);
        randomcode = randomcode + ch;
        ch = (char)r.Next(65, 90);
        randomcode = randomcode + ch;
        return randomcode;
    }
}