class Project < ActiveRecord::Base

  has_many :donations
  has_many :backers, through: :donations, foreign_key: :backer_id
  has_many :rewards
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'



  accepts_nested_attributes_for :rewards

  # to upload image with the gem carrierwave
  mount_uploader :image, ImageUploader

  # Control on date for past date
  validate :not_past_date

  def not_past_date
    if self.deadline < Date.today
      errors.add(:deadline , 'not in past')
    end
  end

end
