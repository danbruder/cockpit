defmodule CockpitWeb.UserView do
  use CockpitWeb, :view
  alias CockpitWeb.{UserView, ProfileView}

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email, 
      profile: render_one(user.profile, ProfileView, "profile.json")
    }
  end
end
