class Movie < ActiveRecord::Base
  has_many :roles, :dependent => :nullify #need to fix this referential int
  has_many :actors, :through => :roles, :foreign_key => :id

  accepts_nested_attributes_for :actors, :allow_destroy => true
  accepts_nested_attributes_for :roles, :allow_destroy => true

  validates :title, :presence => true
end
