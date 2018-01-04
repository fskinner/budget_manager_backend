defmodule BudgetManagerBackendWeb.Router do
  use BudgetManagerBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BudgetManagerBackendWeb do
    pipe_through :api
  end
end
