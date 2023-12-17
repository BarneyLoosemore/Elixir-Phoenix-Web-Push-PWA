defmodule ChatPwa.Application do
  use Application

  @impl true
  def start(:normal, []) do
    children = [
      ChatPwaWeb.Endpoint,
      {Phoenix.PubSub, name: ChatPwaWeb.PubSub}
    ]

    Supervisor.start_link(
      children,
      strategy: :one_for_one,
      name: ChatPwa.Supervisor
    )
  end
end
