class Category < ApplicationRecord
    
    has_many :ads

    validates_presence_of :description

    scope :order_by_description, ->{ order(:description) }
    
    def to_param
        "#{id} #{description}".parameterize
    end

end
