'''
	Suppose you want to set more options for the conversion, like setting a different page format or using watermarking options.
	In that case you just add the parameters that you found in the tables above.

	Say you want to convert http://www.digg.com to PDF and override all margins to 0.
	You’ve subscribed to our service and your API key is abcde12345.

	Therefore you want to send the following HTTP request and redirect the script to the URL in the result:

	http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&top=0&bottom=0&left=0&right=0
	You can use the following code in Python to realize this:

	- See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
'''
import urllib2

data = {
   'apikey': 'abcde12345',
   'url': 'http://www.digg.com'
}
requesturl = 'http://api.htm2pdf.co.uk/urltopdf?apikey={apikey}&url={url}&top=0&bottom=0&left=0&right=0'.format(**data)
result = urllib2.urlopen(requesturl)
localFile = open('mypdf.pdf', 'w')
localFile.write(result.read())
localFile.close()