class Notifications < ActionMailer::Base
  default from: "support@innvent.com.br"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.forgot_password.subject
  #
   def forgot_password(to, login, pass, sent_at = Time.now)
    @subject    = "Your password is ..."
    @body['login']=login
    @body['pass']=pass
    @recipients = to
    @from       = 'support@innvent.com.br'
    @sent_on    = sent_at
    @headers    = {}
  end
end
