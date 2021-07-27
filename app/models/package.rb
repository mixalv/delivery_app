class Package < ApplicationRecord
  belongs_to :courier
  validates :tracking_number, presence: true
  validates :delivery_status, presence: true
end
