class BankAccount < ApplicationRecord
  composed_of :balance, class_name: "Money", mapping: [%w(deposit_amount amount), %w(currency currency)]

  belongs_to :user

  enum currency: {
    JPY: 0,
    USD: 1,
    EUR: 2,
    GBP: 3,
    CNY: 4
  }
end
