class FoodItem < ActiveRecord::Base
    has_many :order_items
    has_many :reviews

    validates :name, :description, :price, presence: true
    
    def image_url_or_default
        if image_url.present?
            image_url
        else
            puts'No Image'        end
    end
    
end
