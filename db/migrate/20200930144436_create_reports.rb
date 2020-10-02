class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :report_name
      t.text :description
      t.integer :version
      t.text :svn_pth
      t.text :oradoc_path
      t.text :db_tab_cols_used

      t.timestamps
    end
  end
end
