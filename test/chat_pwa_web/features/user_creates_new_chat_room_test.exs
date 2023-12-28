defmodule ChatPwaWeb.UserCreatesNewChatRoomTest do
  use ChatPwaWeb.FeatureCase, async: true

  test "user creates a new chat room successfully", %{session: session} do
    session
    |> visit("/")
    |> click(Query.link("New chat room"))
    |> fill_in(Query.text_field("Name"), with: "Elixir")
    |> click(Query.button("Submit"))
    |> assert_has(Query.data("role", "room-title", text: "Elixir"))
  end
end
