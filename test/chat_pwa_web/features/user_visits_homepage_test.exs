defmodule ChatPwaWeb.UserVisitsHomePageTest do
  use ChatPwaWeb.FeatureCase, async: true

  test "user visits rooms page to see a list of rooms", %{session: session} do
    [room1, room2] = insert_pair(:chat_room)

    session
    |> visit("/")
    |> assert_has(room_name(room1))
    |> assert_has(room_name(room2))
  end

  defp room_name(%{name: name}) do
    Query.data("role", "room", text: name)
  end
end
