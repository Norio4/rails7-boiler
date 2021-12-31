FactoryBot.define do
  factory :todo do
    title { "MyString" }
    body { "MyString" }
    completed { false }
    deadlined_at { "2021-12-31 22:47:46" }
  end
end
