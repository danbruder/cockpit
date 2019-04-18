# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cockpit,
  ecto_repos: [Cockpit.Repo]

# Configures the endpoint
config :cockpit, CockpitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uifmVcFl7+wWrvtDl2ozSG+q6zdMSwfouQhkLmeAJvI2UkmoKk+nQpNGpcsnJbkU",
  render_errors: [view: CockpitWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cockpit.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :access_pass, AccessPass.Mailer,
  adapter: Bamboo.TestAdapter,
  api_key: "SG.yoursendgridkey"

config :access_pass, 
  repo: Cockpit.Repo,
  from: "SENDINGEMAIL@whatever.com"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
