class Attendance < ApplicationRecord
	after_create :new_guest_send

	belongs_to :event
	belongs_to :user

  def new_guest_send
    UserMailer.new_guest_send(self).deliver_now
  end

end
