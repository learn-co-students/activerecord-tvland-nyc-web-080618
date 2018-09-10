require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
   "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    array = []
    i = 0
    while i < self.characters.length
      array << "#{self.characters[i].name} - #{self.shows[i].name}"
      i += 1
    end
    array
  end

end
