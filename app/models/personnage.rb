class Personnage < ActiveRecord::Base
  has_many :histoires
  belongs_to :sphere
end
