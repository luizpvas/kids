# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kids,
  ecto_repos: [Kids.Repo]

# Configures the endpoint
config :kids, KidsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DMfr4B/i3L+HVmf30pkmo3OYpP6u3m3Y431LUWGZq0e11wV74FF9D0QizgZ1wT4E",
  render_errors: [view: KidsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kids.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
