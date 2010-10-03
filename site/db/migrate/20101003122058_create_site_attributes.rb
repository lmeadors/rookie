class CreateSiteAttributes < ActiveRecord::Migration
  def self.up
    create_table :site_attributes do |t|
      t.string :name
      t.string :string_value
      t.boolean :boolean_value
      t.integer :integer_value

      t.timestamps
    end
  end

  def self.down
    drop_table :site_attributes
  end
end
