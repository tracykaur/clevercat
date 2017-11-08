class UpgradeMailer < ApplicationMailer
  def upgrade_success(user)
    mail(to: user.email)
  end
end
