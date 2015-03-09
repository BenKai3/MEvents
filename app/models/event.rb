class Event < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :attendings

  validates :state,				:presence 		=> true,
  								:length		    => { :within => 2..2 }

  validates :city,				:presence 		=> true

  validates :name,				:presence 		=> true

end
