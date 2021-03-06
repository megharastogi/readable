class BookVersion < ActiveRecord::Base
	belongs_to :book

	require 'odyssey'

	before_save :find_ri

	def find_ri
		self.ri = Odyssey.flesch_kincaid_grade_level(self.content , all_stats = false) - 1
	end

end
