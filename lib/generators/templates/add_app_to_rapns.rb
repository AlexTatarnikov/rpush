class AddAppToRapns < ActiveRecord::VERSION::MAJOR >= 5 ? ActiveRecord::Migration[5.0] : ActiveRecord::Migration
  def self.up
    add_column :rapns_notifications, :app, :string, null: true
    add_column :rapns_feedback, :app, :string, null: true
  end

  def self.down
    remove_column :rapns_notifications, :app
    remove_column :rapns_feedback, :app
  end
end