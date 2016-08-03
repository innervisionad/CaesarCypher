<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Tillana" rel="stylesheet"/> 
    <title>The Caesar Cypher</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet.css" type="text/css" rel="stylesheet"/>
</head>
<body class="backStyle">
<form id="form1" runat="server">
         <div class="row">
             <div class="jumbotron banner">
                     <h1>The Caesar Cypher</h1>
             </div>
         </div> <!-- closing tag for row-->
  
    <div class="container">  
            <div class="row">
                    <div class="col-sm-6">
                             <asp:TextBox ID="inputBox1" CssClass="textBox" runat="server" Rows="10" Height="150px" Width="100%" placeholder="Please enter the text you would like to encrypt..." TextMode="MultiLine"></asp:TextBox> 
                    </div><!--closing tag for column -->
                    <div class="col-sm-6">
                             <asp:TextBox ID="outputBox1" CssClass="textBox" runat="server" Height="150px" Width="100%" placeholder="Your encrypted message will appear here..." TextMode="MultiLine"></asp:TextBox>        
                    </div> <!-- closing tag for column-->                
            </div> <!--closing tag for row-->


            <div class="row">
                             <asp:Label CssClass="center-block" ID="errorMessage" runat="server" Text=""></asp:Label>
            </div><!--closing tag for row-->


            <div class="row">                       
                             <asp:Button CssClass="center-block" ID="ButtonEncrypt" runat="server" Text="Encrypt/Decrypt" OnClick="ButtonEncrypt_Click" />                
            </div> <!-- closing tag for row-->


            <div class="row">  
                     <div class="col-sm-8">
                             <asp:Label ID="Label2" CssClass="informationBox" runat="server">The Caesar cypher is one of the earliest cyphers to exist. This cypher takes a regular
                             text message and shifts each letter to make an encrypted message. The word 'Hello', for example, can be entered into the text box, 
                             and the cypher shifts each letter 13 places which results in the word 'Uryyb' in the encrypted message. For it's time, it was a revolutionary
                             breakthrough in communication. <br /><br /> 
                             A simple cypher like this, in ancient Roman times, was very effective as only a few people were literate and those who were, considered
                             the code to be a foreign language. A code like this leaves a 'fingerprint' which shows how frequent a letter is used. for example, in this cypher,
                             the letter 'E' would be replaced with 'R'. As 'E' is a common letter in a lot of words, a high frequency of R's show up. Someone can then assume that the 'R'
                             in the code is actually the letter 'E' and, therefore, has cracked the shift number, allowing someone to fully decrypt the message.</asp:Label>                             
                     </div><!--closing tag for column-->
                     <div class="col-sm-4">
                             <asp:Label ID="Label1" CssClass="informationBox" runat="server">
                                 <div id="quoteBack">
                                 <aside class="pquote">                             
                                        <p>If he had anything confidential to say, he wrote it in cipher, that is, by so changing the order of 
                                        the letters of the alphabet, that not a word could be made out. If anyone wishes to decipher these, and get 
                                        at their meaning, he must substitute the fourth letter of the alphabet, namely D, for A, and so with the others.
                                        <br /><br /> Suetonius, Life of Julius Caesar.</p>                              
                                 </aside>
                                     </div>
                                 </asp:Label>
                    </div><!--closing tag for column-->
            </div><!--closing tag for row--> 


            <div class="row" id="pictureBox">
                    <div class="col-sm-10 col-sm-offset-1">
                            <img class="ROT13Image" src="images/ROT13.png" />
                    </div> <!-- closing tag for column-->
        </div><!-- closing tag for row--> 
                                  
    </div>  <!-- closing tag for container -->   
</form>
</body>
</html>
