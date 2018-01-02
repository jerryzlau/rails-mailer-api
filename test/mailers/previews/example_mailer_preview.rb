# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview
  def send_email_preview
    package = {
      "email": "jerrylau21@yahoo.com",
      "subject": "testing"
    }
    ExampleMailer.send_email(package)
  end
end
