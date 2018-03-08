class UserMailerPreview < ActionMailer::Preview

  def welcome_email
    UserMailer.welcome_email(User.first)
  end

  def user_order_email
  	UserMailer.user_order_email(User.first)
  end
end