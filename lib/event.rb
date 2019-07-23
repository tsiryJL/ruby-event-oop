require'pry'

class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees
    end
# -- fonction Event.
        def postpone_24h
            @start_date =+ 60*60*24
        end
            
            def end_date
                return @start_date + duration*60
            end
        
        def is_past?
            return @start_date < Time.now
        end
    
    def is_future?
        !self.is_past?
    end

def is_soon?
    return @start_date < Time.now + 60*30
end

    def to_s
        puts ">Titre : #{@title}"
        puts ">Date de début : #{@start_date}"
        puts ">Durée : #{@duration} minutes"
        print ">Invités :"
        puts @attendees.join(", ")
    end
        
            def age_analysis
                age_array = Array.new #init tab contenant l'age des participants
                average = 0 #init pour calculer la moyenne d'age
            
                @attendees.each do |attendee| #parcours de tous les participants
                    age_array << attendee.age
                    average = average + attendee.age
                end
                    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne
                puts "voici les âges des partivipants :"
                puts age_array.join(", ")
                puts "La moyenne d'âge est de #{average}ans"
            end    
end
