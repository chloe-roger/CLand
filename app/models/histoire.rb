class Histoire < ActiveRecord::Base
  has_many :personnages
  belongs_to :sphere
end
