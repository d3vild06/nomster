class Place < ActiveRecord::Base
    default_scope ->{ order('created_at DESC') }
    belongs_to :user
    ## geocoder stuff
    geocoded_by :address
    after_validation :geocode
    
    # validation
    validates :name, :presence => true, :length => {:minimum => 3}
    validates :description, :presence => true
    validates :address, :presence => true
    
    
    
end
