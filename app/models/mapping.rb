class Mapping < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  has_many :entries, dependent: :destroy
  validates :database1, presence: true
  validates :database2, presence: true
end
