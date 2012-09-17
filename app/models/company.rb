class Company < ActiveRecord::Base
validate :price_negative
  def price_negative
    if(price<0)
      errors.add :price,'put positive price'
    end
  end
end
