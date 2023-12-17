defmodule ChatPwa.Application do
  use Application

  @impl true
  def start(:normal, []) do
    children = [
      ChatPwa.Repo,
      {Phoenix.PubSub, name: ChatPwaWeb.PubSub},
      ChatPwaWeb.Endpoint
    ]

    Supervisor.start_link(
      children,
      strategy: :one_for_one,
      name: ChatPwa.Supervisor
    )
  end
end
