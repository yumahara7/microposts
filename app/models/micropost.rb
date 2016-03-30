class Micropost < ActiveRecord::Base
   belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }


  def trueuser
    if reposted_user_id.present?
        User.find(reposted_user_id)
    else
        User.find(user_id)
    end
  end
end
