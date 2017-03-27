class Task < ActiveRecord::Base
    
    validates_presence_of :action
    validates_length_of :action, maximum: 30, message: "less than 30 chars if you don't mind"
    
    belongs_to :project
    belongs_to :user

end
