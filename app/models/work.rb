class Work < ActiveRecord::Base
  attr_accessible :created_on, :description, :price, :title, :collection, :year, :artwork
  validates_presence_of :title, :created_on
  validates_numericality_of :price
  has_attached_file :artwork, :styles => { :medium => "800x800>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :artwork, :content_type => /\Aimage\/.*\Z/
end
