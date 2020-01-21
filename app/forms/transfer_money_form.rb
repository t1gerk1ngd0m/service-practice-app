class TransferMoneyForm
  include Virtus.model
  include ActiveModel::Model

  attribute :transfer_amount,  Integer
  attribute :from_user_id, Integer
  attribute :to_user_id, Integer

  validates_presence_of %i(
    transfer_amount
    from_user_id
    to_user_id
  )

  def run
    from_bank_account = set_from_bank_account
    to_bank_account = set_to_bank_account
    @transfer_service = TransferService.new(from_bank_account, to_bank_account)
    @transfer_service.transfer(transfer_amount)
  end

  private

  def set_from_bank_account
    from_user = User.find(from_user_id)
    from_user.bank_account
  end

  def set_to_bank_account
    to_user = User.find(to_user_id)
    to_user.bank_account
  end
end