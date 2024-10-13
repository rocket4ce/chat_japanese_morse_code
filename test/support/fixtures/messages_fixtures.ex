defmodule ChatMorseJapaneseKana.MessagesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ChatMorseJapaneseKana.Messages` context.
  """

  @doc """
  Generate a message.
  """
  def message_fixture(attrs \\ %{}) do
    {:ok, message} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> ChatMorseJapaneseKana.Messages.create_message()

    message
  end
end
