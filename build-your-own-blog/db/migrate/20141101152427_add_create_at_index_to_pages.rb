class AddCreateAtIndexToPages < ActiveRecord::Migration
  def change
    add_index(:pages, :created_at)
  end
end