=begin
	
Suppose you want to set more options for the conversion, like creating a single page PDF or setting other page formatting options or something else.
In that case you just add the parameters that you found in the tables above.

Say you want to convert http://www.digg.com to a PDF that has 2 inch top and bottom margins.
You’ve subscribed to our service and your API key is abcde12345.

Therefore you need to send the following HTTP request:

http://api.htm2pdf.co.uk/urltopdf?apikey=abcde12345&url=http://www.digg.com&top=2&bottom=2&unit=in
You can use the following code in Ruby to realize this:

- See more at: http://www.htm2pdf.co.uk/html-to-pdf-api/#examples
	
=end
require 'net/http'
apikey = 'abcde12345'
url = 'http://www.digg.com'

uri = URI("http://api.htm2pdf.co.uk/urltopdf?apikey=#{apikey}&url=#{url}&top=2&bottom=2&unit=in")
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