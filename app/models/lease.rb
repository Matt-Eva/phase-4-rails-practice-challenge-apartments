class Lease < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment
  validates :rent, :tenant_id, :apartment_id, presence: true
end
