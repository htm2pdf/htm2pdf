/*
 * It is very easy to convert a URL to PDF in Java with our HTML to PDF API.
 * 
 * Say you want to convert http://www.google.com to PDF.
 * You’ve subscribed to our service and your API key is abcde12345.
 * 
 * Therefore you want to send the following HTTP GET request:
 * 
 * http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
 * You can use the following code in Java to accomplish this and get the PDF stored as ‘mypdf.pdf’:
 * 
 * - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
 */

String apikey = "abcde12345";
String url = "http://www.google.com";
File outs = new File("C:\\temp\mypdf.pdf");

URL u = new URL("http://api.htm2pdf.co.uk/urltopdf?apikey=" + apikey + "&url=" + url);
URLConnection uc = u.openConnection();
BufferedInputStream is = new BufferedInputStream(uc.getInputStream());
BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(outs));

byte[] b = new byte[8 * 1024];
int read = 0;
while ((read = is.read(b)) > -1) {
	bout.write(b, 0, read);
}
bout.flush();
bout.close();
is.close();