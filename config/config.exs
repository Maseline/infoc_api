# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :infoc_api,
  ecto_repos: [InfocApi.Repo]

# Configures the endpoint
config :infoc_api, InfocApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "koDiF6qmxd00afTfouOKOBW1gtyC1c6/TH0cRT5c7PgYE6O7AvlQWDry9kxloWm0",
  render_errors: [view: InfocApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InfocApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
