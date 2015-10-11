class Mapping < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  validates :database1, presence: true
  validates :database2, presence: true
end
