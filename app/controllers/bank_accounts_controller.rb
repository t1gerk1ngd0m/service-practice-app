class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: %i(index edit update)

  def index
  end

  def edit
    @users = User.all
    @transfer_money_form = TransferMoneyForm.new
  end

  def update
    @transfer_money_form = TransferMoneyForm.new(transfer_money_params)
    if @transfer_money_form.valid?
      redirect_to action: 'index'
    else
      @users = User.all
      @transfer_money_form = TransferMoneyForm.new
      render :edit
    end
  end

  private
  def set_bank_account
    @bank_account = current_user.bank_account
  end

  def transfer_money_params
    params.require(:transfer_money_form).permit(
      :transfer_user_id,
      :transfer_amount
    )
  end
end
