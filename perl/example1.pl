# It is very easy to convert a URL to PDF in Perl with our HTML to PDF API. You can do it with several functions in Perl, like the File::Fetch or the LWP::Simple module.
# 
# Let’s just say you’d like to convert http://www.google.com to PDF.
# You’ve subscribed to our service and your API key is abcde12345.
# 
# With our API you’d need to send the following HTTP request:
# 
# http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
# You can use the following code in Perl to accomplish this and get your PDF saved as ‘mypdf.pdf’:
# 
# - See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
use File::Fetch;

my $apikey = 'abcde12345';
my $url = "http://www.google.com";

my $ff = File::Fetch->new(uri => "http://api.htm2pdf.co.uk/urltopdf?apikey=$apikey&url=$url");
my $where = $ff->fetch( to => '/tmp/mypdf.pdf');