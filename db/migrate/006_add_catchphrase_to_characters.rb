class AddCatchphraseToCharacters < ActiveRecord::Migration[4.2]

    add_column :characters, :catchphrase, :string
    add_column :characters, :actor_id, :string

end