defmodule ChatPwa.Factory do
  use ExMachina.Ecto, repo: ChatPwa.Repo

  def chat_room_factory do
    %ChatPwa.Chat.Room{
      name: sequence(:name, &"chat room #{&1}")
    }
  end
end
