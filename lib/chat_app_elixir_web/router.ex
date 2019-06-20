defmodule ChatAppElixirWeb.Router do
  use ChatAppElixirWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChatAppElixirWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/login", PageController, :login
  end

  scope "/api", ChatAppElixirWeb do
    pipe_through :api

    post "/login", UserController, :login
    resources "/users", UserController
  end
end
