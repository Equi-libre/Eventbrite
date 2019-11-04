class User < ApplicationRecord
	after_create :welcome_send

	has_many :events, foreign_key: 'admin_id', class_name: "Event"
	has_many :events, through: :gossip_tags
	has_many :events

end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
