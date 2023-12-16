defmodule ChatPwa.MixProject do
  use Mix.Project

  def project do
    [
      app: :chat_pwa,
      version: "0.1.0",
      deps: [
        {:phoenix, "~> 1.7.6"},
        {:phoenix_live_view, "~> 0.19.0"},
        {:plug_cowboy, "~> 2.5"},
        {:jason, "~> 1.2"}
      ]
    ]
  end

  def application do
    [
      mod: {ChatPwa.Application, []}
    ]
  end
end
