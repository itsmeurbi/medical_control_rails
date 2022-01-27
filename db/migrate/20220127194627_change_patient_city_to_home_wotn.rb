class ChangePatientCityToHomeWotn < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :city, :home_town
  end
end
