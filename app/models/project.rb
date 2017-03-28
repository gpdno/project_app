class Project < ActiveRecord::Base
    
    validates_presence_of :name
    validates_length_of :name, maximum: 10, message: "less than 10 chars if you don't mind"
    validates_length_of :description, within: 5..30, too_long: 'pick a shorter name', too_short: 'pick a longer name'
    
    has_many :tasks
    belongs_to :user
    
    accepts_nested_attributes_for :tasks

end
