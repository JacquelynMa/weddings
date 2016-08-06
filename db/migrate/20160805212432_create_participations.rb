class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.datetime :added_at

      t.timestamps
    end
  end
end
