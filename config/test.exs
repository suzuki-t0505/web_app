import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_app, WebAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "9TjA0G/ELgkwFqd+BDHKHL5YnxAfdRDDMFlLy4Aaugy1/VT7zywWr9HkKVzfhkBl",
  server: false

# In test we don't send emails.
config :web_app, WebApp.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
