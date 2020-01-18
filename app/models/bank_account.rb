class BankAccount < ApplicationRecord
  belongs_to :user

  enum currency: {
    JPY: 0,
    USD: 1,
    EUR: 2,
    GBP: 3,
    CNY: 4
  }
end
