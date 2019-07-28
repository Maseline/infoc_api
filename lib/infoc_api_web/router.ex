defmodule InfocApiWeb.Router do
  use InfocApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InfocApiWeb do
    pipe_through :api
  end
end
