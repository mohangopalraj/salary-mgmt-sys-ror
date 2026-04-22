require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  describe Employee do
    it "calculates average salary correctly" do
      create(:employee, salary: 100)
      create(:employee, salary: 200)

      expect(Employee.average(:salary)).to eq(150)
    end
  end
end
