# City class inherits from ActiveRecord::Base, which allows use of macro methods, like has_many (indicates a one-to-many connection with another model) & belongs_to (sets up a connection with another model).
class City < ActiveRecord::Base
    has_many :events
end