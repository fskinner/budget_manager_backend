# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :budget_manager_backend,
  ecto_repos: [BudgetManagerBackend.Repo]

# Configures the endpoint
config :budget_manager_backend, BudgetManagerBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rKKcmlj+ASRAS30l1uQriQw0xh7ehYXhP094Nhnbh/Xul2PMXGOQ7g+h80EFuhW4",
  render_errors: [view: BudgetManagerBackendWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BudgetManagerBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Guardian configuration
config :budget_manager_backend, BudgetManagerBackendWeb.Guardian,
  issuer: "BudgetManagerBackend",
  ttl: { 30, :days },
  allowed_drift: 2000,
  secret_key: "G5XlyVNL0H27ZY7tW4N/Jrt+4xvk0UYRxqOA2uksQm8qanQbbo7ojSN0+4FaC/Fv"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
