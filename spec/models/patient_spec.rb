require "spec_helper"

describe Patient do
  it "should have a first name and second name" do
    user = Patient.create!(first_name: "Andy", last_name: "Lindeman")

    expect(user.first_name).to eq("Andy")
    expect(user.last_name).to eq("Lindeman")
    expect(user.name).to eq("Andy Lindeman")
  end

  it "should be of type Patient" do
    user = Patient.create!(first_name: "Andy", last_name: "Lindeman")
    expect(user).to be_an_instance_of(Patient)
  end

end