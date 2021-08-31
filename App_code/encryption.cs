using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for encryption
/// </summary>
public class encryption
{
	public encryption()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string encryptmydata(string passtext) {
        string encryptedtext = "";
        char ch;
        int asciivalue,i;
        for (i = 0; i < passtext.Length; i++) {
            ch = passtext[i];
            asciivalue = ch;
            if (asciivalue >= 55 && asciivalue <= 90) {
                asciivalue = (122 - asciivalue) + 64;
            }
            else if (asciivalue >= 80 && asciivalue <= 100) {
                asciivalue = (90 - asciivalue) + 70;
            }
            else if (asciivalue >= 48 && asciivalue <= 120)
            {
                asciivalue = (100 - asciivalue) + 130;
            }
            ch = (char)asciivalue;
            encryptedtext = encryptedtext + ch;

        }
        return encryptedtext;
    }
}