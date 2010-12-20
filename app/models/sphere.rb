class Sphere < ActiveRecord::Base
  has_many :histoires
  has_many :personnages
  belongs_to :description
end
