FactoryGirl.define do 
    sequence :email do |n|
        "test#{n}@example.com"
    end
    factory :user do 
        first_name "Tracey"
        last_name "Wang"
        email {generate :email}
        password "123123123"
        password_confirmation "123123123"
    end
    
     factory :admin_user, class: "AdminUser" do 
        first_name "Admin"
        last_name "User"
        email {generate :email}
        password "123123123"
        password_confirmation "123123123"
    end
end