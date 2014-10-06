defmodule Devcon.SpeakerController do
  use Phoenix.Controller 
  plug :action
  alias Devcon.Router
  alias Devcon.Speaker
  
  def index(conn, _params) do
    speakers = Repo.all(Speaker)
    json conn, JSON.encode!(speakers)
  end
  
  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, %{"speaker" => %{"name" => name, "bio" => bio}}) do
    speaker = %Speaker{name: name , bio: bio}

    case Speaker.validate(speaker) do
      [] ->
        speaker = Repo.insert(speaker)
        json conn, JSON.encode!("success")
      errors ->
        render conn, "new", speaker: speaker, errors: errors
    end
  end
end
