defmodule Devcon.Router do
  use Phoenix.Router
  
  get "/", Devcon.PageController, :index, as: :pages
  resources "/speakers", Devcon.SpeakerController
end
