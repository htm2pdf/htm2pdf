' It is very easy to convert a URL to PDF in VB.net with our HTML to PDF API. Just get the result of our URL with the VB.net WebClient.
' 
' Let’s say as an example you want to convert http://www.google.com to PDF.
' You’ve subscribed to our service and your API key is abcde12345.
' 
' You would then just send the following HTTP request:
' 
' http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
' And you would use the following code in VB.net to accomplish this and save the file as ‘mypdf.pdf’:
' 
' - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
Dim apiKey As String = "abcde12345"
Dim url As String = "http://www.google.com"

Using client As New WebClient
    client.QueryString.Add("apikey", apiKey)
    client.QueryString.Add("url", Url)
    client.DownloadFile("http://api.htm2pdf.co.uk/urltopdf", "c:\temp\mypdf.pdf")
End Using