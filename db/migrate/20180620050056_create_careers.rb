class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
    	t.string	:name
    	t.text		:description
    	t.text		:skills
    	t.date		:created_at
    end
  end
end
