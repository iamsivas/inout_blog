class CreateCareerApplieds < ActiveRecord::Migration[5.2]
  def change
    create_table :career_applieds do |t|
    	t.string	:name
    	t.string	:email
    	t.string	:phone_no
    	t.string	:resume_link
    	t.integer	:applied_for
    	t.date		:applied_date
    	t.integer	:profile_status, :default=>0, :null=>false
    end
  end
end
