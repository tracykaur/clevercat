class UpgradesController < ApplicationController
  def create
    upgarde = Upgrade.new(upgrade_params)
    if upgrade.save
    redirect_to '/', notice: "Thanks for upgrading!"
  else
    redirect_to '/', notice: { errors: upgrade.errors}
  end

  end

  private

  def upgrade_params
    params.require(:upgrade).permit(:name, :email)
  end
end
