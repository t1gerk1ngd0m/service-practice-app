class TransferMoneyForm
  include Virtus.model
  include ActiveModel::Model

  attribute :transfer_amount,  Integer
  attribute :transfer_user_id, Integer

  validates_presence_of %i(
    transfer_amount
    transfer_user_id
  )
end