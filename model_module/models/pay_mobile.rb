class PayMobile < ActiveRecord::Base
  def self.columns
    @columns ||=[]
  end
end