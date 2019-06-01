class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}" 
    end

    def list_roles
        char = characters.map { |character| character.name }
        shw = shows.map { |show| show.name }
        "#{char.join} - #{shw.join}"
    end
end