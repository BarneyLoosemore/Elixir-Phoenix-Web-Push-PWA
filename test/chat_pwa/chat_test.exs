defmodule ChatPwa.ChatTest do
  use ChatPwa.DataCase, async: true

  import ChatPwa.Factory

  alias ChatPwa.Chat

  describe "all_rooms/0" do
    test "returns all rooms available" do
      [room1, room2] = insert_pair(:chat_room)

      rooms = Chat.all_rooms()

      assert room1 in rooms
      assert room2 in rooms
    end
  end
end
