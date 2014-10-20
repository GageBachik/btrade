class Trade < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :usd, presence: true
  validates :bitcoin, presence: true
end
