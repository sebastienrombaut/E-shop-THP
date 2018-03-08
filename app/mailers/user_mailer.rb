class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://eshop-bali.herokuapp.com/'
    mail(to: @user.email, subject: 'From Bali 🌴 with Love ❤️')
  end
end 