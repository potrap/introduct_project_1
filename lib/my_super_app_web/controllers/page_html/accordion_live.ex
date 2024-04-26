defmodule MySuperAppWeb.AccordionLive do
  use MySuperAppWeb, :surface_live_view
  use Phoenix.LiveView
  import Surface

  alias Moon.Design.Accordion
import MoonWeb.Helpers.Lorem

  def render(assigns) do
    ~F"""
    <Accordion id="simple-accordion">
  <Accordion.Item>
    <Accordion.Header title="Lorem"/>
    <Accordion.Content>{lorem()}</Accordion.Content>
  </Accordion.Item>
  <Accordion.Item>
    <Accordion.Header class="bg-beerus">Beerus bg</Accordion.Header>
    <Accordion.Content class="bg-beerus">{ipsum()}</Accordion.Content>
  </Accordion.Item>
  <Accordion.Item>
    <Accordion.Header>Dolor</Accordion.Header>
    <Accordion.Content>{dolor()}</Accordion.Content>
  </Accordion.Item>
</Accordion>
    """
  end
end
