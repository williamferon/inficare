class CreatePriseEnCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :prise_en_charges do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :traite_par
      t.string :info_patient
      t.string :dispatching_inficare
      t.string :dispatching_kinecare
      t.string :demande
      t.string :service
      t.string :soins_infi
      t.string :soins_kine
      t.date :date_appel
      t.date :date_debut
      t.string :moment
      t.string :channel
      t.string :subchannel
      t.string :coordinateur
      t.string :email
      t.string :commentaire
      t.string :statut_demande
      t.time :matin_start_time
      t.time :matin_end_time
      t.time :midi_start_time
      t.time :midi_end_time
      t.time :apres_midi_start_time
      t.time :apres_midi_end_time
      t.time :soir_start_time
      t.time :soir_end_time

      t.timestamps
    end
  end
end
