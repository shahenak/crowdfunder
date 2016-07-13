class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }
  validates :password, length: { maximum: 20}
  validates :password, confirmation: true

  validates :email, uniqueness: true, email_format: { message: 'has invalid format' }
# added wolf
  # def reset_password_email(user)
  #    @user = User.find user.id
  #    @url  = edit_password_reset_url(@user.reset_password_token)
  #      mail(:to => user.email,
  #           :subject => "Your password has been reset")
  # end

end
