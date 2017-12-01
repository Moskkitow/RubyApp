class Category < ApplicationRecord
    validate_presence_of :description
end
