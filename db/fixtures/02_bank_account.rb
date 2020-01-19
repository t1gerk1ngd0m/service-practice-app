10.times do |n|
  BankAccount.seed do |s|
    s.deposit_amount = 1000000
    s.currency = 0
    s.user_id = n + 1
  end
end
