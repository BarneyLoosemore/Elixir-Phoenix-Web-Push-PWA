import Config

config :chat_pwa, ChatPwa.Repo,
  username: "postgres",
  password: "postgres",
  database: "chat_pwa_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  database: "chat_pwa_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :chat_pwa, ChatPwaWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4002],
  server: true

config :chat_pwa, :sql_sandbox, true

config :wallaby, driver: Wallaby.Chrome
