# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tim = User.create(name: "tim.m.garcia@gmail.com", password: "testing")
account = tim.accounts.create(name: "Primary Checking")
t1 = account.transactions.create(value: 50)
t2 = account.transactions.create(value: 20)

