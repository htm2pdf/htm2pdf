///Suppose you want to set more options for the conversion, like creating a single page PDF or setting encryption options.
///In that case you just add the parameters that you found in the tables above.
///
///So let’s say you would like to convert http://www.digg.com to a single PDF with a widht of 8 inches.
///You’ve subscribed to our service and your API key is abcde12345.
///
///Therefore you want to send the following HTTP request followed by a redirect:
///
///http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&width=8&unit=in
///You can use the following code in C# to realize this:
///
///- See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
string apiKey = "abcde12345";
string url = "http://www.digg.com";

using (var client = new WebClient())
{
    client.QueryString.Add("apikey", apiKey);
    client.QueryString.Add("url", url);
    client.QueryString.Add("width", "8");
    client.QueryString.Add("unit", "in");
    client.DownloadFile("http://api.htm2pdf.co.uk/urltopdf", @"c:\temp\mypdf.pdf");
}