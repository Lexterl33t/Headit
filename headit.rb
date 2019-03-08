require 'colorize'
require 'open-uri'
require '../modules/AsciiMod'


class Headit

	attr_accessor :link, :newuser

	def initialize(uri, useragent)
		@link = uri
		@newuser = useragent

	end

	def headit
		user = open("#{link}", "User-Agent" => "#{newuser}").read

	end


end

def clear
	system("clear")
	system("cls")

end

clear
ascii = AsciiModule::Ascii.new
puts ascii.Asciitext("Headit").red
ascii.Copyright

if !ARGV.empty?

	if ARGV.length == 4
		
		if ARGV[0] == "-l" && ARGV[2] == "-u"
			head = Headit.new(ARGV[1], ARGV[3])
			head.headit
			puts "Yes ur user agent has been edited with success".green

		else
			puts "COMMAND: ruby headit.rb -l <link> -u <newAgent>".red

		end

	else
		puts "COMMAND: ruby headit.rb -l <link> -u <newAgent>".red

	end

else
	puts "COMMAND: ruby headit.rb -l <link> -u <newAgent>".red
end