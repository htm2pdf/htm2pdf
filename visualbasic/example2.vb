' Suppose you want to set more options for the conversion, like setting a different page format or using encryption options.
' In that case you just add the parameters that you found in the tables above.
' 
' Say you want to convert http://www.digg.com to PDF and encrypt the PDF with 256-bit AES and a password of ‘htm2pdf’.
' You’ve subscribed to our service and your API key is abcde12345.
' 
' Therefore you want to send the following HTTP request and redirect the script to the URL in the result:
' 
' http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&encryption=256&userpass=htm2pdf
' You can use the following code in VB.net to realize this:
' 
' - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
Dim apiKey As String = "abcde12345"
Dim url As String = "http://www.digg.com"

Using client As New WebClient
    client.QueryString.Add("apikey", apiKey)
    client.QueryString.Add("url", Url)
    client.QueryString.Add("encryption", "256")
    client.QueryString.Add("userpass", "htm2pdf")
    client.DownloadFile("http://api.htm2pdf.co.uk/urltopdf", "c:\temp\mypdf.pdf")
End Using