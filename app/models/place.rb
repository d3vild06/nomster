class Place < ActiveRecord::Base
    default_scope ->{ order('created_at DESC') }
    belongs_to :user
    validates :name, :presence => true
end
