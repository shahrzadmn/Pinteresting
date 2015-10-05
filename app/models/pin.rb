class Pin < ActiveRecord::Base
    belongs_to :user
    
    has_attached_file :image, {
            :styles => { :large => "700x", :medium => "300x300>", :thumb => "100x100>" },
            :default_url => "/images/thumbnail/blank-recipe.png"
        }

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :description, presence: true
	validates :image, presence: true
end