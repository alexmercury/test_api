class Notification < ApplicationRecord

  belongs_to :user

  after_create :set_scheduler

  def set_scheduler
    Resque.enqueue_at(self.enqueue_at.utc, NotificationsJob, self.id) unless Rails.env.test?
  end

end
