class Employee < ApplicationRecord
  validates :first_name, :last_name, :job_title, :country, :salary, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  # Country salary stats
  def self.salary_stats(country)
    where(country: country)
      .select(
        "MIN(salary) as min_salary,
         MAX(salary) as max_salary,
         AVG(salary) as avg_salary"
      ).take
  end

  # Job title average salary
  def self.job_title_avg(country, job_title)
    where(country: country, job_title: job_title).average(:salary)
  end
end