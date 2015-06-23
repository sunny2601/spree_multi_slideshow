module Spree
  class Slideshow < ActiveRecord::Base
    has_many :slides, :dependent => :destroy, :order => "position ASC"
    
    validates :category, :presence => true
    validates_uniqueness_of :category

    scope :enable, lambda { |category| {:conditions => {:enabled => true, :category => category}} }
    
    def mode_enum
      [[I18n.t(:horizontal), "horizontal"], [I18n.t(:fade), "fade"], [I18n.t(:vertical), "vertical"]]
    end
  end
end
