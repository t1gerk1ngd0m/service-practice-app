class TransferService
  def initialize(from_bank_account, to_bank_account)
    @from_bank_account = from_bank_account
    @to_bank_account = to_bank_account
  end

  def transfer(transfer_amount)
    BankAccount.transaction do
      @from_bank_account.balance -= transfer_amount
      @from_bank_account.save!
      @to_bank_account.balance += transfer_amount
      @to_bank_account.save!
    end
  end
end
