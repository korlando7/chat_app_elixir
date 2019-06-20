# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chat_app_elixir,
  ecto_repos: [ChatAppElixir.Repo]

# Configures the endpoint
config :chat_app_elixir, ChatAppElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gwAExh6LHcYc2/UM7hAMjb85Hpt9SuPZH5Gv1k8wNRpzuoNnqUicsd2usMhF6xbZ",
  render_errors: [view: ChatAppElixirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChatAppElixir.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
