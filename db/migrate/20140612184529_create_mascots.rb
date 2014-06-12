class CreateMascots < ActiveRecord::Migration
  def change
    create_table :mascots do |t|
      t.string :company
      t.string :company_mascot
    end
  end
end
