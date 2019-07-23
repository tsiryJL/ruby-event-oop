require 'pry'
require 'uri'

class User
attr_accessor :email, :age
@@all_User = Array.new
    
def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_User << self
end

    def self.all
        return @@all_User
    end

    def self.find_by_email(email)
            @@all_User.each do |user|

        if user.email == email
            return user
        end
            end
        puts "Aucun utilisateur n'a cet e-mail"
        return false
    end
end
