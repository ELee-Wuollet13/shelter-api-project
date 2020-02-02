class Cat < ApplicationRecord
  belongs_to :shelter, optional: true
end
