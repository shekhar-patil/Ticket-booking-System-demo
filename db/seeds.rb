role = Role.create!(name: 'superadmin')
role1 = Role.create!(name: 'admin')
role2 = Role.create!(name: 'customer')


User.create!(email: 'shekhar+superadmin@gmail.com', password: 'shekhar123', role: role)
User.create!(email: 'shekhar+admin@gmail.com', password: 'shekhar123', role: role1)
User.create!(email: 'shekhar+customer1@gmail.com', password: 'shekhar123', role: role2)
User.create!(email: 'shekhar+customer2@gmail.com', password: 'shekhar123', role: role2)
User.create!(email: 'shekhar+customer3@gmail.com', password: 'shekhar123', role: role2)

Theater.create!(name: 'PVR: Kumar Pacific Pune', city: 'pune')
