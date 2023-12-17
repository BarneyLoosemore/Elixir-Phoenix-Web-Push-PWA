defmodule ChatPwa.ErrorJSON do
  def render("404.json", _assigns) do
    %{error: "Not found"}
  end
end
