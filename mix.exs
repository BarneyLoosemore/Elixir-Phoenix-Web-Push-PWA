defmodule ChatPwa.MixProject do
  use Mix.Project

  def project do
    [
      app: :chat_pwa,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      mod: {ChatPwa.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.7.6"},
      {:phoenix_ecto, "~> 4.4"},
      {:ecto_sql, "~> 3.10"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_live_view, "~> 0.19.0"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_html, "~> 3.3"},
      {:plug_cowboy, "~> 2.5"},
      {:jason, "~> 1.2"},
      {:esbuild, "~> 0.7", runtime: Mix.env() == :dev},
      {:wallaby, "~> 0.30.6", [runtime: false, only: :test]},
      {:ex_machina, "~> 2.7.0"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "ecto.setup", "assets.setup", "assets.build"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"],
      "assets.setup": ["esbuild.install --if-missing"],
      "assets.build": ["esbuild default"],
      "assets.deploy": ["esbuild default --minify", "phx.digest"]
    ]
  end
end
