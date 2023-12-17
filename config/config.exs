import Config

config :phoenix, :json_library, Jason

config :chat_pwa, ChatPwa.Endpoint,
  url: [host: "localhost"],
  pubsub_server: ChatPwa.PubSub,
  render_errors: [
    formats: [html: ChatPwa.ErrorHTML],
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

import_config "#{Mix.env()}.exs"
