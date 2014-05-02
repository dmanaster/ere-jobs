class Company < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_many :jobs

  validates :name, presence: true

end
