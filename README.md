# README
STUDENT MANAGEMENT API 

* System dependencies
  Download Ubuntu on WSL to install Ruby and setup rails environment

* Configuration
  Clone the repository
  https://github.com/crispgee/rails-student-api.git

* Database creation
  Generate your models on terminal
  rails g model Student firstname:string lastname:string age:integer date_of_birth:date
  
*Create and Run Database Migrations
  rails db:create
  rails db:migrate

* Database initialization
* Edit this file
   database.yml in the cofig directory
    username: your_username   -enter your postgres database username
    password: your_password   -enter your postgres database password

* How to run the test suite
  To run enter
  rails s
  Copy the path(localhost:3000/students) to test endpoints with Postman



*API response and status codes
1. Create Student
    POST /students
   Description: It adds a new student Record with a JSON response of student body
Status Code: 201 created
2. Get All Students
    GET /students
  Description: It retrieves all students in the databse record
Status Code:200 ok
3. Update Student
PUT/PATCH /students/:id

Description: Updates an existing student record.
 Status Code: 200 ok or 204 no_content
4. Delete Student
DELETE /students/:id

Description: Deletes a student record.
Status Code:  204 no_content or 200 OK
  
   

