class User < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  
  validate :date_before_today
  def date_before_today
    errors.add(:end_date, "は今日以降の日付を選択してください") if end_date.nil? || end_date < Date.today
  end
end
