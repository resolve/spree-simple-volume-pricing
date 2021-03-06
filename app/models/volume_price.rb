class VolumePrice < ActiveRecord::Base
  belongs_to :variant

  validates :variant,
    :presence => true
  validates :starting_quantity,
    :presence => true,
    :uniqueness => {:scope => :variant_id},
    :numericality => {:greater_than => 0, :only_integer => true, 
                      :allow_blank => true}
  validates :price,
    :presence => true,
    :numericality => {:greater_than => 0.0, :allow_blank => true}
    
  def self.active
    where(['start_at <= :now AND end_at >= :now', {:now => Time.now}])
  end
end
