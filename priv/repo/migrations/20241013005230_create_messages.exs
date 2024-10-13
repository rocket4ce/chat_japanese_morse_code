defmodule ChatMorseJapaneseKana.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :body, :text
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end
  end
end
