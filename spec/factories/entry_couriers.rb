FactoryBot.define do
  factory :entry_courier do
    reference "MyString"
    subject "MyText"
    sender "MyString"
    receveir "MyString"
    duration "2018-05-24"
    sentDate "2018-05-24"
    orderNumber "MyString"
    file "MyString"
    user nil
    project nil
  end
end
