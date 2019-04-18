defmodule CockpitWeb.Router do
  use CockpitWeb, :router
    use AccessPass.Routes 

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :auth do
    plug Auth 
  end   

  scope "/api" do
    pipe_through :api
    access_pass :routes
  end

  scope "/api", CockpitWeb do
    pipe_through :api
    pipe_through :auth
    resources "/payments", PaymentController, except: [:new, :edit]
    resources "/profiles", ProfileController, except: [:new, :edit]
    resources "/users", UserController, except: [:new, :edit]
  end
end
