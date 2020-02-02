class Shelter < ApplicationRecord
  has_many :cat
  has_many :dog
  has_many :other
end
