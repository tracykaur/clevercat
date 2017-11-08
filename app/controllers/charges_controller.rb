class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 200

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    current_user.tutor.upgrade = true
    current_user.tutor.save

    UpgradeMailer.upgrade_success(current_user).deliver_now

    puts charge.inspect


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
