class Donation < ActiveRecord::Base

# belongs_to :user, as: :backer
belongs_to :project
belongs_to :backer, class_name: 'User', foreign_key: 'backer_id'
has_one :reward

  def remaining_goal
    @sum = 0
    @projects.user.each do |user|
      if (user.project_id = project(params[:id]))
        @sum += @donation
      end
    end
    return @sum
  end

end
