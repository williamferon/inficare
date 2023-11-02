class AddPatientToInfoMedicales < ActiveRecord::Migration[7.0]
  def change
    add_reference :info_medicales, :patient, null: false, foreign_key: true
  end
end
