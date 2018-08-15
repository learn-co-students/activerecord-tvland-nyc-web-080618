class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character_names = self.characters.map do |character|
      character.name
    end

    show_names = self.characters.map do |character|
      character.show.name
    end

    i = 0
   arr = []
   while i < show_names.length
     arr << "#{character_names[i]} - #{show_names[i]}"
     i += 1
   end

   arr
 end
end
