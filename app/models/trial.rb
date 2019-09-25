class Trial < ApplicationRecord
    has_many :characters
    has_many :exhibits
end
