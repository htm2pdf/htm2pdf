/*
 * Suppose you want to set more options for the conversion, like creating a single page PDF or setting encryption options.
 * In that case you just add the parameters that you found in the tables above.
 * 
 * Say you want to convert http://www.digg.com to PDF and you want to set a document open password of ‘htm2pdf;.
 * You’ve subscribed to our service and your API key is abcde12345.
 * 
 * Therefore you want to send the following HTTP request:
 * 
 * http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&userpass=htm2pdf
 * You can use the following lines of code in Java to do this:
 * 
 * - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
 */
String apikey = "abcde12345";
String url = "http://www.digg.com";

URL u = new URL("http://api.htm2pdf.co.uk/urltopdf?apikey=" + apikey + "&url=" + url + "&userpass=htm2pdf");
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