class Book < ApplicationRecord

  validates_presence_of :title
  validates_presence_of :author
  validates_presence_of :favorite_character


  def to_j
    self.to_json(except: %i[created_at updated_at])
  end

end
