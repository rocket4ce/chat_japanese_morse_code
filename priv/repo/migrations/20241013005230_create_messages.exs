defmodule ChatMorseJapaneseKana.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :body, :text
      add :messageable_id, :integer
      add :messageable_type, :string

      timestamps(type: :utc_datetime)
    end
    create index(:messages, [:messageable_id, :messageable_type])
  end
end
