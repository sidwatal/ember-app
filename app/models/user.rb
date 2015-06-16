class User < ActiveRecord::Base
	acts_as_paranoid

	def is_deleted
		!!deleted_at
	end
end
