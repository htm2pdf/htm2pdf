# HTML to PDF API #

## Convert HTML to PDF in C#/Java/PHP/Ruby/Python/.NET/Perl etc ##
Our HTML to PDF API allows you to convert HTML pages to PDF files with great ease, power and performance. You can use it manually and in any programming language. You will get a lot of different settings to optimize your conversion and make sure the PDF looks exactly the way YOU want it.

Some of the use cases for our API are:

  * You want to generate PDF forms like proposals / invoices / timesheets etc.
  * You want to generate PDFs from data in a database and you know how to create regular web pages from the database.
  * You want to generate reports as PDF
  * You want to not only display a PDF, but also save it as a local file and then choose what you want to do with it.
  * You want to create PDFs from different sources and merge them into one bigger PDF _**NEW!**_
  * You want to create professional PDFs and use your own stationary as background _**NEW!**_

Here’s how easy it is: suppose you’d like to convert the web page http://www.google.com to PDF. You would just send the following HTTP request to get the PDF:

```
http://api.htm2pdf.co.uk/urltopdf?apikey=yourapikey&url=http://www.google.com
```

If you want to see how you do this in C# / Java / PHP / Ruby / Python / VB.net or Perl then [click here](https://code.google.com/p/htm2pdf/source/browse/) to go directly to the coding examples.

By default the PDF will be created with the conversion settings you set in the members area. There you can set page format, margins, header & footer and other important settings.

We allow you to override most of these in each conversion. You can do so with the parameters in the tables below.

URL of the web page that you’d like have converted. Note that you must properly escape the ampersands (&) if you want to pass additional query parameters (more info in our blog). The URL must also include the whole domain including the ‘http://’

| **Parameter** | **Description** |
|:--------------|:----------------|
| url | URL of the web page that you’d like have converted. <br> Note that you must properly escape the ampersands (&) if you want to pass additional query parameters (more info in our blog). <br> The URL must also include the whole domain including the ‘<a href='http://’'>http://’</a> <br>
<tr><td> merge </td><td> Number of PDFs that you want to merge together into one new PDF <i><b>NEW!</b></i> <br> When you merge, all other options (except encryption) are ignored and the previously generated PDFs are merged as-is into one new PDF. <br> Note that you must have created these PDFs with our API or SDK in the previous two hours. After two hours we delete your PDFs from our cache and they can no longer be merged. </td></tr>
<tr><td> filename </td><td> Filename for the PDF </td></tr>
<tr><td> width </td><td> Custom width of the PDF </td></tr>
<tr><td> height </td><td> Custom height of the PDF, if you specify the width, but not the height, then we fit the whole page into a one page PDF by auto-adjusting the height of the PDF. </td></tr>
<tr><td> left </td><td> left margin </td></tr>
<tr><td> right </td><td> right margin </td></tr>
<tr><td> top </td><td> top margin </td></tr>
<tr><td> bottom </td><td> bottom margin </td></tr>
<tr><td> unit </td><td> Unit for size & margin settings. Can be ‘mm’ (millimeters), ‘in’ (inches) or ‘pt’ (points). We’ll use mm in case you don’t specify a unit </td></tr>
<tr><td> header </td><td> URL of the header HTML, which you want to use for this conversion. This should be a valid URL to a location where you defined your header HTML. </td></tr>
<tr><td> footer </td><td> URL of the footer HTML, which you want to use for this conversion. This should be a valid URL to a location where you defined your footer HTML. </td></tr>
<tr><td> pageoff </td><td> Page offset, which is used to adjust page numbering in your header and footer. Please also have a look at your members area for more details. </td></tr>
<tr><td> cmt </td><td> Set the CSS media type so you can influence better how your content is converted to PDF. We currently support the values print and screen. If you don’t specify one, we take the one you’ve set in the members area. The default there is screen. <br> See w3schools for more information on CSS media types. </td></tr>
<tr><td> popup </td><td> If you set this to y we will return a URL to the PDF on our server instead of the actual PDF. <br> This allows you to generate the PDF, without having to use bandwith to serve it to your visitors. </td></tr>
<tr><td> jscript </td><td> Use this parameter to render your PDF with JavaScript on or off. </td></tr>
<tr><td> jscriptms </td><td> Use this parameter to set the time in milliseconds that we take to complete JavaScript processing. </td></tr></tbody></table>

<code>Note on measurements: in case you only specify a height then we’ll ignore it; In case you only specify a width we’ll assume you want a single page PDF. In case you specify one or more margins, but not all, we’ll assume the others to be 0.</code>

<br>

<h2>Encryption and password protection</h2>

You can also use encryption settings to encrypt the PDF we generate and – if you want – you can protect it with a password or use rights management to control which things the user is allowed to do with the PDF. The below table lists all the options you can pass for this.<br>
<br>
<table><thead><th> <b>Parameter</b> </th><th> <b>Description</b> </th></thead><tbody>
<tr><td> encryption </td><td> The level of encryption for the PDF. You can choose the following values: <ul><li>40 for 40-bit RC4 encryption.</li><li>128 for 128-bit RC4 encryption, requires Acrobat reader 5 or later</li><li>128aes for 128-bit AES encryption, requires Acrobat reader 7 or later</li><li>256 for 256-bit AES encryption, requires Acrobat reader X or later</li></ul> </td></tr>
<tr><td> ownerpass </td><td> The master password that controls all encryption & rights settings for the PDF. </td></tr>
<tr><td> userpass </td><td> The password a user needs to open the PDF. </td></tr>
<tr><td> noprint </td><td> If set, Acrobat Reader will prevent users from printing the PDF. </td></tr>
<tr><td> nocopy </td><td> If set, Acrobat Reader will prevent users from copying content from the PDF. </td></tr>
<tr><td> nomodify </td><td> If set, Acrobat Reader will prevent users from modifying the PDF. </td></tr></tbody></table>

<h2>Watermarking and stamping your PDF</h2>

In some cases you’d like to watermark your PDF, e.g. when you want to show draft or private documents. The below table lists all the options you can pass for this.<br>
<br>
Note that we consider stamping the same as watermarking, because if you use an opacity of 1 (fully opague) your watermark will come out like a stamp.<br>
<br>
<table><thead><th> <b>Parameter</b> </th><th> <b>Description</b> </th></thead><tbody>
<tr><td> wm </td><td> The full URL where we can find the image you want to use as watermark. Please make sure the image is really there. </td></tr>
<tr><td> wm_x </td><td> The horizontal position where you want the watermark to start. </td></tr>
<tr><td> wm_y </td><td> The vertical position where you want the watermark to start. </td></tr>
<tr><td> wm_angle </td><td> The angle of rotation (in degrees) you want for your watermark. </td></tr>
<tr><td> wm_opac </td><td> The level of opacity you want for your watermark. This is a “real” number between 0 and 1. 0 is fully transparant and 1 is fully opague (what some call a ‘stamp’). </td></tr>
<tr><td> wm_sx </td><td> The horizontal scaling you want the watermark for your watermark. If you want it twice as wide, set this to 2. </td></tr>
<tr><td> wm_sy </td><td> The vertical scaling you want for your watermark. If you want it half as high, set this to 0.5. </td></tr></tbody></table>

<h2>Stationary aka (full) page background <i><b>NEW!</b></i></h2>

If you want your company’s PDFs to have your own stationary as background – then look no further. The API allows you to set your own stationary (or page background) for the pages of the PDF. You can use the same image for all the pages, or you can have a different image for the first page, the last page and all pages in between.<br>
The image will be set as background, so all items you have in your HTML will appear over it. Note that non-transparent images or CSS background-color will be rendered OVER this.<br>
<br>
As opposed to watermarks, which start (by default) in the top left corner of the CONTENT area, stationary starts at the top left corner of the full page. That’s also why we call it stationary as it resembles a real piece of paper.<br>
<br>
<table><thead><th> <b>Parameter</b> </th><th> <b>Description</b> </th></thead><tbody>
<tr><td> bg </td><td> The full URL where we can find the image you want to use as stationary for the first page. Please make sure the image is really there. <br> If you don’t specify bg2 or bg3 then this image will be used for ALL your pages. </td></tr>
<tr><td> bg2 </td><td> The URL where we can find the image you want to use as stationary for the pages in between the first and last page. </td></tr>
<tr><td> bg3 </td><td> The URL where we can find the image you want to use as stationary for the last page of your PDF. </td></tr>
<tr><td> bg_x </td><td> The horizontal position where you want the stationary background to start. </td></tr>
<tr><td> bg_y </td><td> The vertical position where you want the stationary background to start. </td></tr>
<tr><td> bg_angle </td><td> The angle of rotation (in degrees) you want for your background. </td></tr>
<tr><td> bg_opac </td><td> The level of opacity you want for your background. This is a “real” number between 0 and 1. 0 is fully transparant and 1 is fully opague. </td></tr>
<tr><td> bg_sx </td><td> The horizontal scaling you want for your stationary background. <br> <b>For a background that stretches the whole width, use 0. This then sets positioning and angle of rotation to 0.</b> </td></tr>
<tr><td> bg_sy </td><td>The vertical scaling you want for your stationary background. <br> <b>For a background that stretches the whole height, use 0. This then sets positioning and angle of rotation to 0.</b>  </td></tr></tbody></table>

<h2>Authorization – converting content in your members area or authorization protocols</h2>

We understand that you can have content, which is only accessible to your private users, and still want to have it converted to PDF. We can surely help you with this. By default we can access your content over basic HTTP authentication with the parameters below. We can also utilize any other authorization protocol to access your content as long as you give us the specifics. Please <a href='http://www.htm2pdf.co.uk/contact'>contact us</a> for more details.<br>
<br>
<table><thead><th> <b>Parameter</b> </th><th> <b>Description</b> </th></thead><tbody>
<tr><td> httpuser </td><td> The user name you want us to use for the authentication </td></tr>
<tr><td> httppass </td><td> The password you want us to use for the authentication. </td></tr>