defmodule MySuperAppWeb.MenuLive do
  use MySuperAppWeb, :surface_live_view

  alias Moon.Design.MenuItem
  alias Moon.Lego
  alias Moon.Design.MenuItem
  alias Moon.Lego
  alias MySuperApp.{Repo, LeftMenu, RightMenu}

  data(expanded0, :boolean, default: false)
  data(expanded1, :boolean, default: true)
  data(expanded2, :boolean, default: false)
  data(left_menu, :any, default: [])
  data(right_menu, :any, default: [])

  def render(assigns) do
    ~F"""
    <div class="flex justify-around w-full">
      <div class="w-56 bg-goku flex flex-col gap-2 rounded-moon-s-lg p-4">
      {#for menu <- @left_menu}
      {#if menu.title == "Hi"}
        <MenuItem role="switch" is_selected={@expanded0} title={menu.title} on_click="on_expand0" />
      {#else}
        <MenuItem>{menu.title}</MenuItem>
      {/if}
    {/for}
        {#if @expanded0}
          <MenuItem>
            <span class="w-6" />
            <Lego.Title>
              Accordion</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-6" />
            <Lego.Title>
              Avatar</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-6" />
            <Lego.Title>
              Breadcrumb</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-6" />
            <Lego.Title>
              Button</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-6" />
            <Lego.Title>
              Checkbox</Lego.Title>
          </MenuItem>
        {/if}
      </div>
      <div class="w-56 bg-goku flex flex-col gap-2 rounded-moon-s-lg p-4">
      {#for menu <- @right_menu}
      {#if menu.title == "Getting started2"}
        <MenuItem>
        <span class="w-3" :on-click="on_expand1" :values={is_selected: !@expanded1}>
          <Lego.ChevronUpDown is_selected={@expanded1} />
        </span>
        <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
          <p class="leading-4 font-semibold text-moon-10">CX</p>
        </span>
        <Lego.Title>
        {menu.title}</Lego.Title>
      </MenuItem>
      {#if @expanded1}
        <MenuItem>
          <span class="w-6" />
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">S</p>
          </span>
          <Lego.Title>Sub nested item</Lego.Title>
        </MenuItem>
        <MenuItem>
          <span class="w-6" />
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">S</p>
          </span>
          <Lego.Title>Sub nested item</Lego.Title>
        </MenuItem>
      {/if}
      {#else}
        <MenuItem> <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
        <p class="leading-4 font-semibold text-moon-10">B</p>
      </span>
      <Lego.Title>
        <p class="leading-6 text-moon-14 font-semibold">{menu.title}</p>
      </Lego.Title></MenuItem>
      {/if}
    {/for}
        <MenuItem>
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">B</p>
          </span>
          <Lego.Title>
            <p class="leading-6 text-moon-14 font-semibold">Bitcasino</p>
          </Lego.Title>
        </MenuItem>

        <MenuItem>
          <span class="w-3" />
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">CX</p>
          </span>
          <Lego.Title>Quality...</Lego.Title>
        </MenuItem>
        <MenuItem>
          <span class="w-3" />
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">RG</p>
          </span>
          <Lego.Title>Responsible...</Lego.Title>
        </MenuItem>
        <MenuItem>
          <span class="w-3" :on-click="on_expand2" :values={is_selected: !@expanded2}>
            <Lego.ChevronUpDown is_selected={@expanded2} />
          </span>
          <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
            <p class="leading-4 font-semibold text-moon-10">RG</p>
          </span>
          <Lego.Title>Responsible...</Lego.Title>
        </MenuItem>
        {#if @expanded2}
          <MenuItem>
            <span class="w-6" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">S</p>
            </span>
            <Lego.Title>Sub nested item</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-6" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">S</p>
            </span>
            <Lego.Title>Sub nested item</Lego.Title>
          </MenuItem>
        {/if}
        <div class="flex flex-col gap-2 rounded-moon-s-lg">
          <MenuItem>
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">S</p>
            </span>
            <Lego.Title>
              <p class="leading-6 text-moon-14 font-semibold">Sportsbet</p>
            </Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-3" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">RG</p>
            </span>
            <Lego.Title>Customer...</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-3" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">CX</p>
            </span>
            <Lego.Title>Quality...</Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-3" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">RG</p>
            </span>
            <Lego.Title>Responsible...</Lego.Title>
          </MenuItem>
        </div>
        <div class="flex flex-col gap-2 rounded-moon-s-lg">
          <MenuItem>
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">L</p>
            </span>
            <Lego.Title>
              <p class="leading-6 text-moon-14 font-semibold">Livecasino</p>
            </Lego.Title>
          </MenuItem>
          <MenuItem>
            <span class="w-3" />
            <span class="bg-gohan w-6 h-6 top-2 left-2 rounded-full flex justify-center items-center">
              <p class="leading-4 font-semibold text-moon-10">RG</p>
            </span>
            <Lego.Title>Customer...</Lego.Title>
          </MenuItem>
        </div>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, left_menu: LeftMenu |> Repo.all(), right_menu: RightMenu |> Repo.all())}

  end


  def handle_event("on_expand" <> number, params, socket) do
    {:noreply, assign(socket, :"expanded#{number}",  params["is-selected"] |> convert!)}
  end

  defp convert!("true"), do: true
  defp convert!("false"), do: false
end
