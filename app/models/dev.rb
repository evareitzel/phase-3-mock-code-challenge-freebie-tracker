class Dev < ActiveRecord::Base
  
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.any? do |freebie|
      freebie.item_name == item_name
    end
    # self.freebies.contains(item_name)
  end

  def give_away(dev, freebie)
    freebie.update(dev: dev) unless freebie.dev != self
    # if(freebie.dev == self) then frebie.dev == dev 
  end

end
