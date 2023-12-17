import Config

config :chat_pwa, ChatPwa.Repo,
  username: "postgres",
  password: "postgres",
  database: "chat_pwa_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :chat_pwa, ChatPwaWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000]
