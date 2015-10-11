class Mapping < ActiveRecord::Base
  has_many :entries
  validates :database1, presence: true
  validates :database2, presence: true
end
