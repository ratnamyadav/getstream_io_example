if User.count == 0
  User.create(name: 'Ratnam', email: 'ratnam@gmail.com', password: '123456', password_confirmation: '123456')
  User.create(name: 'Anju', email: 'anju@gmail.com', password: '123456', password_confirmation: '123456')
  User.create(name: 'Shubham', email: 'shubham@gmail.com', password: '123456', password_confirmation: '123456')
end
if Deal.count == 0
  user = User.last
  user.deals.create(name: 'Test Deal 1', description: 'Test deal 1 description.')
  user.deals.create(name: 'Test Deal 2', description: 'Test deal 2 description.')
  user.deals.create(name: 'Test Deal 3', description: 'Test deal 3 description.')
  user = User.first
  user.deals.create(name: 'Test Deal 4', description: 'Test deal 4 description.')
  user.deals.create(name: 'Test Deal 5', description: 'Test deal 5 description.')
  user.deals.create(name: 'Test Deal 6', description: 'Test deal 6 description.')
  user.deals.create(name: 'Test Deal 7', description: 'Test deal 7 description.')
end