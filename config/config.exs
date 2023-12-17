import Config

config :chat_pwa, ecto_repos: [ChatPwa.Repo]

config :chat_pwa, ChatPwaWeb.Endpoint,
  url: [host: "localhost"],
  pubsub_server: ChatPwaWeb.PubSub,
  render_errors: [
    formats: [html: ChatPwaWeb.ErrorHTML],
    layout: false
  ]

config :esbuild,
  version: "0.17.11",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
