class UserMailer < ApplicationMailer

  def gd_mail
    @sender = current_user
    @recipient = User.find(params[:id])
    mail(to: @recipient.email, subject: 'A fellow GreenDigger would like your help!')
  end
end
