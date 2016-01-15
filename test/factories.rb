## user factory
FactoryGirl.define do
    factory :user do
        sequence :email do |n|
            "person#{n}@fakedomain.com" 
        end
    password "gopatriots!!!"
    password_confirmation  "gopatriots!!!"
    end
end


# place factory
FactoryGirl.define do
    factory :place do
        name 'LVAC'
        description 'Best Athletic Club in Nevada!'
        address "1234 Anywhere St. Henderson, NV 89044"
        
        association :user
    end
end







## comment factory
FactoryGirl.define do
    factory :comment do
        message 'Awesome Place!'
        rating '4_stars'
        
        association :user
        association :place
    end
    
end