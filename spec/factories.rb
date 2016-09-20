FactoryGirl.define do
  factory :user do
    email("test@email.com")
    password("123456")
  end

  factory(:course) do
    name('Irish Set Dance')
  end

  factory(:section) do
    name('Dances of Connemara')
    leve('Beginner')
    number(1)
  end

  factory(:lesson) do
    name('Connemara Set')
  end

  factory(:dance) do
    name('Connemara Set Dance')
    county("Galway")
    style("Irish Set Dance")
    note("First sides are on the right of first tops")
  end

  factory(:figure) do
    number(1)
    tune("Reels")
    title("Ladies Chain")
    bar_total(200)
  end

  factory(:instruction) do
    number(1)
    move("All")
    call("Lead around/back")
    bars(16)
  end
end
