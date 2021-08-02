class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }

  # Restaurant.categories
  def self.categories
    %w(chinese italian japanese french belgian)
  end
end
