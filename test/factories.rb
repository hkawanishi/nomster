FactoryGirl.define do

	# use Ken's answers from Q&A
  factory :user do
    sequence :email do |n|
      "penguinisreallygreat#{n}@gmail.com"
    end
    password "cantflybutwaddle"
    password_confirmation "cantflybutwaddle"
  end

  factory :place do
  	name "hotel"
  	address "123 street"
  	description "awesome"
  	latitude(42.0)
  	longitude(42.0)
  	association :user
  end

  factory :comment do
  	message "awesome"
  	rating "5_stars"
  	association :user
  	association :place
  end
end