defmodule ChatPwaWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      use ChatPwaWeb, :verified_routes
      import ChatPwa.Factory
      @endpoint ChatPwaWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ChatPwa.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(ChatPwa.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(ChatPwa.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
