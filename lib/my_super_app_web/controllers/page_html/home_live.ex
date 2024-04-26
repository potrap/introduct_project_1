defmodule MySuperAppWeb.HomeLive do
  use Phoenix.LiveView
  import Surface

  alias Moon.Design.Button

  alias Moon.Design.MenuItem
alias Moon.Lego


alias Moon.Icons.{
  TravelAirplane,
  TravelBill,
  GenericLoyalty,
  DevicesJoystick
}




def render(assigns) do
  ~F"""
  <Button as="a" href="/hello">Hello</Button>
  <Button as="a" href="/menu">Menu</Button>
  <Button as="a" href="/tab">Tab</Button>
  <Button as="a" href="/acc">Accordion</Button>
  <div class="flex justify-left w-full">
  <div class="w-94 bg-goku flex flex-col gap-3 rounded-moon-s-lg p-6">
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>
    <MenuItem is_active>
      <span class="bg-piccolo/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelAirplane class="text-2xl text-piccolo" />
      </span>
      <Lego.MultiTitle title="Job Board" text="find your dream design job" />
    </MenuItem>

    <MenuItem>
      <span class="bg-chichi/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <TravelBill class="text-2xl text-chichi" />
      </span>
      <Lego.MultiTitle title="Freelance Projects" text="An exclusive list for contract work" />
    </MenuItem>
    <hr class="w-80 border-px border-solid border-beerus left-6 top-40  self-stretch">
    <MenuItem>
      <span class="bg-raditz/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <GenericLoyalty class="text-2xl text-raditz" />
      </span>
      <Lego.MultiTitle
        title="Want freelance design projects?"
        text="Get new leads in your inbox every day"
      />
    </MenuItem>
    <MenuItem>
      <span class="bg-frieza/20 rounded-lg w-10 h-10 flex justify-center items-center">
        <DevicesJoystick class="text-2xl text-frieza" />
      </span>
      <Lego.MultiTitle
        title="Personalized your profile with video"
        text="Introduce yourself to new clients with Pitch"
      />
    </MenuItem>
  </div>
</div>
  """
end

end
