require "rack"
require "pry"

class App
	def call(env)
		path = env["PATH_INFO"]

		if path == "/"
			[200, {"Content-Type" => "text/html"}, ["<h2>Hello <em>World</em>!</h2>"]]
		elsif path == "/potato"
			[200, {"Content-Type" => "text/html"}, ["<p>Welcome to my Potato Page</p>"]]
		else
			[404, {"Content-Type" => "text/html"}, ["Page not found"]]
		end
	end
end

run App.new