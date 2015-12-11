class Place < ActiveRecord::Base
    default_scope ->{ order('created_at DESC') }
    belongs_to :user
    validates :name, :presence => true, :length => {:minimum => 3}
    validates :description, :presence => true
    validates :address, :presence => true
end
