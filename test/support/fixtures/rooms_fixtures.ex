defmodule ChatMorseJapaneseKana.RoomsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ChatMorseJapaneseKana.Rooms` context.
  """

  @doc """
  Generate a room.
  """
  def room_fixture(attrs \\ %{}) do
    {:ok, room} =
      attrs
      |> Enum.into(%{
        name: "some name",
        slug: "some slug"
      })
      |> ChatMorseJapaneseKana.Rooms.create_room()

    room
  end
end
