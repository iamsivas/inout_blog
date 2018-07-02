class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
    	t.string	:name
    	t.string	:email
    	t.string	:phone
    	t.text		:message
    	t.integer	:status, :default=>0, :null=>false
    	t.date		:contact_date
    end
  end
end
