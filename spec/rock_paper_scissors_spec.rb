require('rspec')
require('rock_paper_scissors')


describe('String#beats') do
  it("returns -true- if rock is the object and scissors is the argument") do
    expect("rock".beats("scissors")).to(eq("win"))
  end

  it("should return lose if paper is the obj and scissors is the argument") do
    expect("paper".beats("scissors")).to(eq("lose"))
  end

  it("should randomly choose a move for computer and display results if no computer choice is passed") do
    expect("scissors".beats("")).to_not(eq(""))
  end
end
