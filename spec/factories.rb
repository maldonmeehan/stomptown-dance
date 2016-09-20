FactoryGirl.define do
  factory :user do
    email("test@email.com")
    password("123456")

  end
  factory(:course) do
    name('Irish Set Dance')
  end
end
