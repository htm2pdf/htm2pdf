# Suppose you want to set more options for the conversion, like setting a different page format or using encryption options.
# In that case you just add the parameters that you found in the tables above.
# 
# Say you want to convert http://www.digg.com to one long single page PDF of 20cm wide (=200mm).
# You’ve subscribed to our service and your API key is abcde12345.
# 
# Therefore you want to send the following HTTP request and redirect the script to the URL in the result:
# 
# http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&width=200&unit=mm
# You can use the following code in Perl to realize this:
# 
# - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
use File::Fetch;

my $apikey = 'abcde12345';
my $url = "http://www.google.com";

my $ff = File::Fetch->new(uri => "http://api.htm2pdf.co.uk/urltopdf?apikey=$apikey&url=$url&width=200&unit=mm");
my $where = $ff->fetch( to => '/tmp/mypdf.pdf');