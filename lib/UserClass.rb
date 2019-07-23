require 'uri'

class User
attr_writer :mastercard 
attr_reader :birthdate
attr_accessor :email, :encrypted_password
@@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance

    def greet
        puts "Bonjour, monde!"
    end

#<<<<<<<<<<<<<< methode qui dit bonjours à quelqu'un >>>>>>>>>>>>>>
        def say_hello_to_someone(first_name)
            puts "Bonjour,#{first_name} !"
        end

#<<<<<<<<<<<  methode en qui affiche un id du class brut >>>>>>>>>>>>
            def show_itself
                print "voici l'instance : "
                puts self # + put ID class
            end

#---------------<< write variable >>---------------
                def read_mastercard
                return @mastercard
                end

#--------------<< read variable! >>------------
            def update_birthdate(birthdate_to_update)
                @birthdate = birthdate_to_update
            end 

#<<<<<<<<<<<< E-mail >>>>>>>>>>
        def update_email(email_to_update)# << mise à jours email
            @email = email_to_update
        end

#+--------------- Read ------------+
def read_email
    return @email # >>read update
end

#+--------------- initialize methode -----------+
    def initialize(email_to_save)
        if  check_email(email_to_save)
                @email = email_to_save
                @@user_count = @@user_count + 1
        else
            puts "Erreur ! email foireux. Restart!"
        end
    end
    
            def check_email(email_to_save)
                if email_to_save.match( /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i)
                    puts true
                   return true
                else
                    puts false
                    return false
                end
                    return email_to_save
            end

#+------------- call class.sef methode ------------+
    def self.count
        return @@user_count
    end

    #<< password >>
        def change_password(new_password)
            @encrypted_password = encrypt(new_password)
        end

        private
    def encrypt_private(string_to_encrypt)
        return "##ENCRYPTED##"
    end
end
puts "end of the the line!"
