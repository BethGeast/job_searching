class Job < ApplicationRecord
  validates :status, inclusion: { in: ["Interested", "Applied", "Extended Application Sent", "Technical Interview", "Full Interview", "Unsuccessful", "Job Withdrawn", "Application Withdrawn", "Job Offered"] }
end
