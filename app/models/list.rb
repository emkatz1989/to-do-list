class List < ActiveRecord::Base

	validates_presence_of :name
	validates_length_of :name, maximum: 50

	has_many :items
	belongs_to :user
end