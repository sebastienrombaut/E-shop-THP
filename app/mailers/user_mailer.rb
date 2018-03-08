class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://eshop-bali.herokuapp.com/'
    mail(to: @user.email, subject: 'From Bali 🌴 with Love ❤️')
  end
end 

  def user_order_email(user)
  	@user = user
  	@shop_url = 'https://eshop-bali.herokuapp.com/items'
  	mail(to: @user.email, subject: 'Ta commande a bien été enregistrée')
  end
end
