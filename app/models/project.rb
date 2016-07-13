class Project < ActiveRecord::Base
  has_many :rewards

  accepts_nested_attributes_for :rewards


    # Control on date for past date
    validate :not_past_date

    def not_past_date
      if self.deadline < Date.today
        errors.add(:deadline , 'not in past')
      end
    end

end
