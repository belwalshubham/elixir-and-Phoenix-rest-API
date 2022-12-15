defmodule ExrestWeb.UserController do
  use ExrestWeb, :controller
  alias Exrest.Accounts.User
  alias Exrest.Users

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create_user(params) do
      conn
      |> put_status(:created)
      |> render("show.json", user: user)
    end
  end
end
