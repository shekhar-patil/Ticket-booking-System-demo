FactoryBot.define do
  factory :movie do
    name { "MyString" }
    description { "MyString" }
    release_date { Time.now - 8.days }
  end
end
