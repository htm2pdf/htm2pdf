/// It is very easy to convert a URL to PDF in C# with our HTML to PDF API. Just get the result of our URL with the C# WebClient method.
/// 
/// Say you want to convert http://www.google.com to PDF.
/// You’ve subscribed to our service and your API key is abcde12345.
/// 
/// Therefore you want to send the following HTTP request:
/// 
/// http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
/// You can use the following code in C# to accomplish this and save the PDF as ‘mypdf.pdf’:
/// 
/// - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
string apiKey = "abcde12345";
string url = "http://www.google.com";

using (var client = new WebClient())
{
    client.QueryString.Add("apikey", apiKey);
    client.QueryString.Add("url", url);
    client.DownloadFile("http://api.htm2pdf.co.uk/urltopdf", @"c:\temp\mypdf.pdf");
}