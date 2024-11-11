class Job < ApplicationRecord
  validates :status, inclusion: { in: ["Bookmarked", "Submitted", "Further Application", "Technical Interview", "Interview", "Unsuccessful", "Job Withdrawn", "Application Withdrawn", "Offer Made", "Contacted"] }
end
