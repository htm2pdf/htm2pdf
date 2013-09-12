<?php
	/*
	 * It is very easy to convert a URL to PDF in PHP with our API. Just get the result of our URL with the PHP function get_file_contents.
	 * 
	 * Say you want to convert http://www.google.com to PDF.
	 * You’ve subscribed to our service and your API key is abcde12345.
	 * 
	 * Therefore you want to send the following HTTP request:
	 * 
	 * http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
	 * You can use the following code in PHP to accomplish this and save the PDF as ‘mypdf.pdf’:
	 * 
	 * - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
	 */

	$apikey = 'abcde12345';
	$url = 'http://www.google.com';

	$result = file_get_contents("http://api.htm2pdf.co.uk/urltopdf?apikey=$apikey&url=$url");
	file_put_contents('/tmp/mypdf.pdf',$result);
?>