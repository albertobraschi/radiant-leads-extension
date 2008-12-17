class CreateLeads < ActiveRecord::Migration
  def self.up
    create_table :lead_statuses do |t|
      t.column :name, :string
    end

    LeadStatus.create(:name => "New")
    LeadStatus.create(:name => "Seen")
    LeadStatus.create(:name => "Delivered")
    LeadStatus.create(:name => "Failed")
    LeadStatus.create(:name => "Rejected")

    create_table :leads do |t|
      t.column :first_name, :string
      t.column :last_name, :string, :null => false
      t.column :phone, :string, :limit => 32
      t.column :email, :string, :null => false
      t.column :lead_status_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :lead_statuses
    drop_table :leads
  end
end
