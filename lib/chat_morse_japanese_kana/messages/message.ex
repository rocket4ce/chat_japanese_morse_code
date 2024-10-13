defmodule ChatMorseJapaneseKana.Messages.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :body, :string
    belongs_to :user, ChatMorseJapaneseKana.Accounts.User
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:body, :user_id])
    |> validate_required([:body, :user_id])
  end
end
