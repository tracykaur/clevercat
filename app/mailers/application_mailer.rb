class ApplicationMailer < ActionMailer::Base
  default from: 'upgraded@clevercat.xyz'
  layout 'mailer'
end
