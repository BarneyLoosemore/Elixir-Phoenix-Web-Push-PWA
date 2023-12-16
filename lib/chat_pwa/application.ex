defmodule ChatPwa.Application do
  use Application

  @impl true
  def start(:normal, []) do
    Supervisor.start_link(
      [ChatPwa.Endpoint],
      strategy: :one_for_one,
      name: ChatPwa.Supervisor
    )
  end
end
