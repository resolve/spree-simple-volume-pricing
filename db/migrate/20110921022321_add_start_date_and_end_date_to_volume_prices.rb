class AddStartDateAndEndDateToVolumePrices < ActiveRecord::Migration
  def self.up
    add_column :volume_prices, :start_at, :datetime
    add_column :volume_prices, :end_at, :datetime
  end

  def self.down
    remove_column :volume_prices, :start_at
    remove_column :volume_prices, :end_at
  end
end
