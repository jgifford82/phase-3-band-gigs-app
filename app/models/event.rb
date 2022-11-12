# belongs_to must be singular for the macro to work properly, otherwise the inferred class will be wrongly pluralized too.
class Event < ActiveRecord::Base
    belongs_to :city
end