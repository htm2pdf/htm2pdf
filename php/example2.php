<?php
	/*
	 * Suppose you want to set more options for the conversion, like creating a single page PDF or passing a watermark. In that case you just add the parameters that you found in the tables above.
	 * 
	 * Say you want to convert http://www.digg.com to a single page PDF with width 300mm.
	 * You’ve subscribed to our service and your API key is abcde12345.
	 * 
	 * Therefore you want to send the following HTTP request:
	 * 
	 * http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&width=300&unit=mm
	 * You can use the following code in PHP to realize this:
	 * 
	 * - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
	 */
	$apikey = 'abcde12345';
	$url = 'http://www.digg.com';

	$result = file_get_contents("http://api.htm2pdf.co.uk/urltopdf?apikey=$apikey&url=$url&width=300&unit=mm");
	file_put_contents('/tmp/mypdf.pdf',$result);

?>