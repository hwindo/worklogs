class WorkLog < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: false
end
