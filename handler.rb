load "vendor/bundle/bundler/setup.rb"
require 'coderay'

def hello(event:, context:)
  { 
  	statusCode: 200,
  	body: CodeRay.scan(File.read(__FILE__), :ruby).div,
  	headers: {
  		"content-type" => "text/html"
  	}
  }
end
