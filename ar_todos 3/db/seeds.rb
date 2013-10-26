require_relative '../config/application'

50.times do 
  Task.create(:todo => Faker::Lorem.sentence)
end


  
