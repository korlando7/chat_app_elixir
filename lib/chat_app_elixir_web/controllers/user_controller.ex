defmodule ChatAppElixirWeb.UserController do
  use ChatAppElixirWeb, :controller

  alias ChatAppElixir.User
  alias ChatAppElixir.Repo

  def index(conn, _params) do
    users = Repo.all(User)
    json(conn, users)
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(User, String.to_integer(id))
    json conn, user
  end

  def create(conn, %{"name" => name, "email" => email, "password" => password}) do
    {:ok, inserted} = Repo.insert(%User{name: name, email: email, password: password})
    json conn, inserted
  end

  def login(conn, %{"email" => email, "password" => password}) do
    user = Repo.get_by(User, email: email, password: password)
    json conn, user
  end
end