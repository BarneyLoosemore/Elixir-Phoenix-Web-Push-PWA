defmodule ChatPwa.Chat do
  alias ChatPwa.{Chat, Repo}

  def all_rooms do
    Chat.Room |> Repo.all()
  end
end
