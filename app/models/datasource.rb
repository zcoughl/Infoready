class Datasource < ActiveRecord::Base
  belongs_to :user
  validates :source_name, presence: true
  validates :account, presence: true
  validates :password, presence: true
  validates :description, length: {maximum: 140}
  #accepts_nested_attributes_for :user
end
