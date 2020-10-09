class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "#{@picture.user.email}", subject: "Post confirmation email"
  end
end
