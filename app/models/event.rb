require 'date'

class Event < ActiveRecord::Base
	validates :organizer_name, :title, :date, :organizer_email, presence: true
	validates :title, uniqueness: true
	validates :organizer_email, format: {with: /\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/}
	# validate :date_is_valid
	# validate :date_is_in_future


	# def date_is_valid
	# 	errors.add(:date, "must be a valid date.") if ((DateTime.parse(self.date) rescue ArgumentError) == ArgumentError) 
	# end

	# def date_is_in_future		
	# 	errors.add(:date, "must be in the future.") if (((DateTime.parse(self.date) < Date.today) rescue ArgumentError) == ArgumentError) 
	# end

end
