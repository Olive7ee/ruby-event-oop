require 'pry'

class User
	attr_accessor :email
	@@user_email = 0 #initialisation de  la variable de classe


	def  initialize(email_to_save)
		@email = email_to_save
		@@user_email  +=1
	end

	def self.count
		return @@user_count
	end
end

binding_pry
puts "end of file"

