defmodule ExrestWeb.UserView do
  use ExrestWeb, :view
  alias ExrestWeb.UserView

  def render("show.json", %{user: user}) do
    render_one(user, UserView, "user.json")
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      name: user.name
    }
  end
end
