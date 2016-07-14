class User < ActiveRecord::Base

  authenticates_with_sorcery!
  # has_many :projects
  has_many :donations, foreign_key: "backer_id"
  # has_many :backed_projects, through: :donations
  has_many :backed_projects, through: :donations, source: :backer
  has_many :projects, foreign_key: 'owner_id'
  has_many :rewards, through: :donations

  # validates :password, length: { minimum: 3 }
  # validates :password, length: { maximum: 20}
  # validates :password, confirmation: true

  # validates :email, uniqueness: true, email_format: { message: 'has invalid format' }
# added wolf
  # def reset_password_email(user)
  #    @user = User.find user.id
  #    @url  = edit_password_reset_url(@user.reset_password_token)
  #      mail(:to => user.email,
  #           :subject => "Your password has been reset")
  # end
  # class Owner < User
  #   has_many :projects
  # end

end
