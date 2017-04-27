class UserMailer < ApplicationMailer
  default from: 'prateekarora5796@gmail.com'
  
  def confirmation_order(user_info)
    @user = user_info
    mail(to: @user[:email], subject: "Your order at Westin Hotel is confirmed! #{@user[:email]}")    
  end
end
