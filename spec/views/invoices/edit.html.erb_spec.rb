require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :uuid => "MyString",
      :state => "MyString",
      :info => ""
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input[name=?]", "invoice[uuid]"

      assert_select "input[name=?]", "invoice[state]"

      assert_select "input[name=?]", "invoice[info]"
    end
  end
end
