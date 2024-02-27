## Require faker
require 'faker'

# #1. Create users
# User.create(
#   email: 'user@example.com',
#   password: 'password',
#   password_confirmation: 'password'
# )
#

# #2. Create expenses
user = User.last

100.times do
  expense = Expense.create(
    title: Faker::Book.title,
    description: Faker::Alphanumeric.alpha(number: 40),
    expense_date: DateTime.now,
    amount: Faker::Base.rand_in_range(100,15600),
    status: true,
    user_id: user.id
  )
  # print result to console
  # p "#{expense.title} created"
end
