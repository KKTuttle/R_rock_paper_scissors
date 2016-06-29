require("rspec")
require("sinatra")
require('capybara/rspec')
require("rps.rb")

describe("String#rps?") do
  it("returns true if rock is the object and scissors is the argument") do
    expect(("rock").rps?("scissors")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    expect(("paper").rps?("rock")).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument") do
    expect(("scissors").rps?("paper")).to(eq(true))
  end
  it("returns false if scissors is the object and rock is the argument") do
    expect(("scissors").rps?("rock")).to(eq(false))
  end
  it("returns true if paper is the object and scissors is the argument") do
    expect(("paper").rps?("scissors")).to(eq(false))
  end
  it("returns true if rock is the object and paper is the argument") do
    expect(("rock").rps?("paper")).to(eq(false))
  end
end
