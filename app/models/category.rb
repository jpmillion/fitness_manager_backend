class Category < ApplicationRecord
    has_many :exercises, dependent: :destroy
end
