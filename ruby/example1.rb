=begin
It is very easy to convert a URL to PDF in Ruby with our HTML to PDF API. Just get the result of our URL with the Ruby class Net::HTTP.

Say you want to convert http://www.google.com to PDF.
You’ve subscribed to our service and your API key is abcde12345.

This means you would want to send the following HTTP request:

http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.google.com
You can use the following code in Ruby to accomplish this and get the PFD saved as ‘mypdf.pdf’:

- See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
=end
require 'net/http'
apikey = 'abcde12345'
url = 'http://www.google.com'

uri = URI("http://api.htm2pdf.co.uk/urltopdf?apikey=#{apikey}&url=#{url}")
Net::HTTP.start(uri.host, uri.port) do |http|
  request = Net::HTTP::Get.new uri.request_uri

  http.request request do |response|
    open 'mypdf.pdf', 'w' do |io|
      response.read_body do |chunk|
        io.write chunk
      end
    end
  end
end