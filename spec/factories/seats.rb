FactoryBot.define do
  factory :seat do
    number { 1 }
    type { "" }
    price { 1.5 }
    booked { false }
    time_slot { nil }
    user { nil }
  end
end
