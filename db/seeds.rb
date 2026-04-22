first_name = ['John', 'Jane', 'Michael', 'Emily', 'David', 'Sarah', 'Robert', 'Jessica', 'Daniel', 'Laura']
last_name = ['Smith', 'Johnson', 'Brown', 'Davis', 'Miller', 'Wilson', 'Moore', 'Taylor', 'Anderson', 'Thomas']
job_title = ['Software Engineer', 'Product Manager', 'Data Analyst', 'UX Designer', 'Marketing Specialist', 'Sales Representative', 'HR Manager', 'Financial Analyst', 'Customer Support', 'Operations Manager']
country = ['USA', 'Canada', 'UK', 'Germany', 'France', 'Australia', 'India', 'China', 'Brazil', 'Mexico']
department = ['Engineering', 'Product', 'Data', 'Design', 'Marketing', 'Sales', 'HR', 'Finance', 'Support', 'Operations']   


employee = []
1000.times do

    employee << {
        first_name: first_name.sample,
        last_name: last_name.sample,
        job_title: job_title.sample,
        country: country.sample,
        salary: rand(50000..150000),
        department: department.sample,
        created_at: Time.now,
        updated_at: Time.now
    }    
end 
Employee.insert_all(employee)
puts "1000 employees created"