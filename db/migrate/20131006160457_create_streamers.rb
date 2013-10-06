class CreateStreamers < ActiveRecord::Migration
  def change
    create_table :streamers do |t|
      t.string :hash_tag

      t.timestamps
    end
  end
end
