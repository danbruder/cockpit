defmodule CockpitWeb.ProfileView do
  use CockpitWeb, :view
  alias CockpitWeb.{UserView,ProfileView}

  def render("index.json", %{profiles: profiles}) do
    %{data: render_many(profiles, ProfileView, "profile.json")}
  end

  def render("show.json", %{profile: profile}) do
    %{data: render_one(profile, ProfileView, "profile.json")}
  end

  def render("profile.json", %{profile: profile}) do
    %{id: profile.id,
      avatar_url: profile.avatar_url, 
      user_id: profile.user_id,
    }
  end
end
