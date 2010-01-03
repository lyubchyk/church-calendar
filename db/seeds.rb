# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
for i in 0..379 do
  CustomDate.create(:date=>Date::civil(Date.today.year, 1, 1)+i.days)
end

Static.create(:name => "Молитовне правило церкви")

Static.root.children.create(:name => "Утреня")
Static.root.children.create(:name => "Літургія")
Static.root.children.create(:name => "Часи")
Static.root.children.create(:name => "Вечірня")
Static.root.children.create(:name => "Повечір'я")
Static.root.children.create(:name => "Північна")

Page.create(:name => "Слово отців", :text => "Текст")
Page.create(:name => "Про календар", :text => "Текст")
Page.create(:name => "Контакти", :text => "Текст")