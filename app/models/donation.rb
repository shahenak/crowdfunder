class Donation < ActiveRecord::Base

# belongs_to :user, as: :backer
belongs_to :project
belongs_to :backer, class_name: 'User', foreign_key: 'backer_id'
has_one :reward


end
