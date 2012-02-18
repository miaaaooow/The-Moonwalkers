FactoryGirl.define do
  factory :user do
    name 'Cute Fat Cat'
    username 'garfield'
    password 'lasagna'
    password_confirmation 'lasagna'
    email 'garfield@abv.bg'
    #admin false
    #moonwalker false
  end

  factory :admin, :class => User do
    username 'administrela'
    password 'melikescheese'
    password_confirmation 'melikescheese'
    email 'garfield_foo@abv.bg'
    admin true
    moonwalker false
  end

  factory :mw, :class => User do
    name 'maria'
    username 'administrela'
    password 'melikescheese'
    password_confirmation 'melikescheese'
    email 'garfield_bar@abv.bg'
    admin false
    moonwalker true
  end

  factory :nameless_user, :class => User do
    username 'administer'
    password '777555333'
    password_confirmation '777555333'
    email 'garfield_real@abv.bg'
    admin true
    moonwalker true
  end
  
  factory :album do
    name 'Some'
    description 'Some pictures that are fun!'
    cover { FactoryGirl.generate(:photo) }
  end

  factory :dashboard_entry do
    content 'No rehearsals today'
    user :mw
  end

  factory :got_it do
    dashboard_entry
    user :mw
  end

  factory :novelty do
    title 'Title'
    text 'Text'
    user :mw
  end

  factory :photo do
    description 'kitty'
    photo { FactoryGirl.generate(:photo) }
    album
  end

  sequence :photo do |n|
    "mw-#{n}.jpg"
  end
end
