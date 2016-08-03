using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ButtonEncrypt_Click(object sender, EventArgs e)
    {
        encryptMessage();
    }

    
    public void encryptMessage()
    {
        //set the user input into a variable
        String rawCode = inputBox1.Text;

        //set the variable text into a chararray
        char[] codeChars = rawCode.ToCharArray();

        // set the error message to an empty string as the start.
        errorMessage.Text = "";

        // checks the string to see if the string contains a number. If a number is present, an error message shows telling you to enter a different message.
        for(int i=0; i<=9; i++)
        {
            //check if string contains i.
            if (rawCode.Contains(i.ToString()))
            {
                //error message if a number is present.
                errorMessage.Text = "***You have entered invalid characters (0-9). Please enter a message without numbers.***";
                return;
            }
            
        }

        for (int i = 0; i < rawCode.Length ; i++)
        {
            //check the character and switch letter accordingly
      
            if (((int)codeChars[i] >= (int)'a' && (int)codeChars[i] <= (int)'m') || (((int)codeChars[i] >= (int)'A' && (int)codeChars[i] <= (int)'M')))
            {
                //add 13 to character value
                codeChars[i] = (char)((int)codeChars[i] + 13);
            }
            else if ( codeChars[i] ==' ' || codeChars[i] == ' '|| codeChars[i] == ','|| codeChars[i] == '.'|| codeChars[i] == '!'|| codeChars[i] == '?')
            {
                //these characters will stay the same
            }
            else
            {
                // subtract 13 character value
                codeChars[i] = (char)((int)codeChars[i] - 13);
            }
        }
        //declare string to output message
        String decryptOutput = "";
        //put the chars back into a string
        for(int j = 0; j <= codeChars.Length -1; j++)
        {
            decryptOutput += codeChars[j].ToString();
        }
        //output the string to the window
        outputBox1.Text = decryptOutput;              
    }


 
}
