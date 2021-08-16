class ApplicationMailer < ActionMailer::Base
  default from: 'do-not-reply@herokuapp.com'
  layout 'mailer'
end
