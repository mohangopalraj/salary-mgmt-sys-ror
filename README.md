# README

Salary Management Tool

1. Overview

A minimal yet scalable salary management system built for HR managers to manage employees and analyze salary insights across countries and job roles.

The system is designed for organizations with **10,000+ employees**, focusing on performance, usability, and clean architecture.


2.Features

### Employee Management

* Add, edit, delete employees
* View employee list with pagination
* Filter by country and job title

### Salary Insights

* Min, Max, Avg salary by country
* Avg salary by job title within a country
* Top 5 highest-paid employees
* Salary distribution visualization (Chart.js)

---

3. Tech Stack

PS C:\Users\DELL\Desktop\railsApp\salaryMgmt> rails -v
Rails 8.1.3
PS C:\Users\DELL\Desktop\railsApp\salaryMgmt> ruby -v
ruby 3.4.8 (2025-12-17 revision 995b59f666) +PRISM [x64-mingw-ucrt]

* **Backend + UI**: Ruby on Rails (ERB)
* **Database**: Mysql2
* **Frontend**: ERB + Bootstrap + Chart.js
* **Caching**: Rails.cache
* **Pagination**: Kaminari

---

4.Setup Instructions

```bash
git clone <repo-url>
cd salary_tool

bundle install
rails db:create
rails db:migrate
rails db:seed

rails server
```

Visit:

```
http://localhost:3000
```

---

Seeding

* Generates **10,000 employees**
* Uses bulk insert (`insert_all`) for performance
* Randomized names, countries, job titles

---

5. Performance Considerations

* Indexed columns: `country`, `job_title`
* Bulk insert for seeding (fast)
* Pagination to limit records per page
* SQL aggregation instead of Ruby loops
* Cached insights (10 min expiry)

---

6. Design Decisions

### Why Rails (ERB instead of React)?

* Faster development cycle
* Reduced complexity
* Easier to maintain for internal HR tools

### Why SQL Aggregations?

* Efficient for large datasets
* Avoids memory-heavy Ruby processing

---

7. Testing

* Model tests for salary calculations
* Query correctness validation
* Fast and deterministic tests

Run:

```bash
bundle exec rspec
```

---

8. AI Usage

AI tools were used for:

* Generating initial scaffolding
* Optimizing seed script
* Reviewing query performance

All outputs were manually reviewed and validated.

---

9. Future Improvements

* Role-based authentication (HR/Admin)
* CSV export
* Salary trend analysis
* Background jobs for heavy analytics
* API layer for external integrations

---

10. Author

Mohan Kumar
