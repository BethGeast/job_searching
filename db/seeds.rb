require 'faker'

puts "Cleaning Database...Bear with..."
Job.destroy_all
puts "---------------"
puts "All clean"
puts "---------------"
puts "Let's get crackin'..."
puts "****************************"

status_options = [
  "Bookmarked",
  "Submitted",
  "Further Application",
  "Technical Interview",
  "Interview",
  "Unsuccessful",
  "Job Withdrawn",
  "Application Withdrawn",
  "Offer Made",
  "Contacted"
]

location_options = [
  "Full Remote",
  "London",
  "Norwich",
  "Cambridge",
  "Manchester",
  "Birmingham",
  "Bristol",
  "Brighton",
  "Edinburgh",
  "Amsterdam"
]

25.times do
  job = Job.new(
    last_update: Faker::Date.backward(days: 30),
    deadline: Faker::Date.forward(days: 30),
    status: status_options.sample,
    job_title: Faker::Job.title,
    company: Faker::Company.name,
    salary: rand(2500000..5000000),
    location: location_options.sample,
    link: Faker::Internet.url,
    extra_notes: Faker::TvShows::TheOffice.quote
  )
  job.save!
  puts "Another added..."
  puts "-----------------------------"
end

puts "******************************"
puts "All done :))"
