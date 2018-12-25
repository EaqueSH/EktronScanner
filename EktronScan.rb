require 'open-uri'
require 'colorize'


class Design

	def AsciiText()
		open("http://artii.herokuapp.com/make?text=EktronScan").read



	end

	def Copy

		puts "-------------------"
		puts "Script Name: EktronScan".green
		puts "Vulnerability: XML RPC file upload.".green
		puts "CMS: Ektron".green
		puts "Developped by: Muham'RB".red
		puts "My Github: https://github.com/EaqueSH".blue
		puts "-------------------"



	end






end

class Scanner

	attr_accessor :uri

	def initialize(website)
		@uri = website

	end

	def scannerAutoExploit
		begin
			request = open("#{uri}/WorkArea/Upload.aspx")
			if request.status == ["200", "OK"]
				puts "#{uri} -> is Vulnerable".green
				puts "Path: #{uri}/WorkArea/Upload.aspx".green

			else
				puts "#{uri} -> is not Vulnerable".red


			end
		rescue OpenURI::HTTPError
			puts "#{uri} -> is not Vulnerable".red
		end


	end





end

design = Design.new

puts design.AsciiText
puts design.Copy

print("Type Website link: ")
url = gets.chomp

scanner = Scanner.new(url)
scanner.scannerAutoExploit

