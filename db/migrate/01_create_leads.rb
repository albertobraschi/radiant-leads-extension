class CreateLeads < ActiveRecord::Migration
  def self.up
    create_table :lead_statuses do |t|
      t.column :name, :string
    end

    LeadStatus.create('New')
    LeadStatus.create('Seen')
    LeadStatus.create('Delivered')
    LeadStatus.create('Failed')
    LeadStatus.create('Rejected')

    create_table :leads do |t|
      t.column :first_name, :string
      t.column :last_name, :string, :null => false
      t.column :phone, :string, :limit => 32
      t.column :email, :string, :null => false
      t.column :status_id, 
      t.timestamps
    end
  end

  def self.down
    drop_table :leads
  end
end
