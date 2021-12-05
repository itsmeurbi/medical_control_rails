class AddDiagnosisFieldsToPatient < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :primary_dx, :string
    add_column :patients, :initial_dx, :string
    add_column :patients, :final_dx, :string
    add_column :patients, :medical_history, :string
    add_column :patients, :surgical_history, :string
    add_column :patients, :treatment, :string
  end
end
