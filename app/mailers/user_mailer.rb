class UserMailer < ApplicationMailer
  def note_like_email(like)
    @user = like.user
    @note = like.note
    mail(to: @user.email, subject: 'Someone has liked your note')
  end

  def note_unlike_email(unlike)
    @user = unlike.user
    @note = unlike.note

    mail(to: @user.email, subject: 'Someone has unliked your note')
  end
end
