class UserMailer < ActionMailer::Base


  def new_comment_notification(comment)
    recipients "bluedistance@gmail.com, mikefabrikant@gmail.com"
    from       "webmaster@rememberingpeter.info"
    subject    "A new comment has been posted"
    body       :comment => comment
  end
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
  
    @body[:url]  = "http://YOURSITE/activate/#{user.activation_code}"
  
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @body[:url]  = "http://YOURSITE/"
  end
  
  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = "ADMINEMAIL"
      @subject     = "[YOURSITE] "
      @sent_on     = Time.now
      @body[:user] = user
    end
end
