class Dog < ApplicationRecord
  belongs_to :shelter, optional: true
end
