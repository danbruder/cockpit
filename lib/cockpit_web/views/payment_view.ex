defmodule CockpitWeb.PaymentView do
  use CockpitWeb, :view
  alias CockpitWeb.PaymentView

  def render("index.json", %{payments: payments}) do
    %{data: render_many(payments, PaymentView, "payment.json")}
  end

  def render("show.json", %{payment: payment}) do
    %{data: render_one(payment, PaymentView, "payment.json")}
  end

  def render("payment.json", %{payment: payment}) do
    %{id: payment.id,
      amount: payment.amount,
      title: payment.title}
  end
end
