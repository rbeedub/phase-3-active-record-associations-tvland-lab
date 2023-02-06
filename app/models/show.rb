class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.characters.map {|c| "#{c.actor.first_name} #{c.actor.last_name}"}
  end 
end