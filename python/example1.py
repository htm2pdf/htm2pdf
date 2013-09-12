'''
	It is very easy to convert a URL to PDF in Python with our HTML to PDF API. Just get the result of our URL with the Python function urllib2.urlopen.

	Suppose you’re interested in converting http://www.google.com to PDF.
	You’ve subscribed to our service and your API key is abcde12345.

	In that case you’d need to send the following HTTP request:

	http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
	You could use the following code in Python to accomplish this and get your PDF saved as ‘mypdf.pdf’:

	- See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
'''
import urllib2

data = {
   'apikey': 'abcde12345',
   'url': 'http://www.google.com'
}
requesturl = 'http://api.htm2pdf.co.uk/urltopdf?apikey={apikey}&url={url}'.format(**data)
result = urllib2.urlopen(requesturl)
localFile = open('mypdf.pdf', 'w')
localFile.write(result.read())
localFile.close()