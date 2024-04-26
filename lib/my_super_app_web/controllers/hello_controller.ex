defmodule MySuperAppWeb.HelloController do
    use MySuperAppWeb, :controller
  
    def hello(conn, _params) do
        render(conn, :hello)
    end
  end