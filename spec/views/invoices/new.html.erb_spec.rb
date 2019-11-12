require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :uuid => "MyString",
      :state => "MyString",
      :info => ""
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input[name=?]", "invoice[uuid]"

      assert_select "input[name=?]", "invoice[state]"

      assert_select "input[name=?]", "invoice[info]"
    end
  end
end
