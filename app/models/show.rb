class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  #returns an Array of the full names of each actor associated with a show. Remember, a show should have many actors through characters.
  def actors_list
    self.actors.pluck(:full_name)
  end
end