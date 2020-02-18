require "rails_helper"

RSpec.describe NotificationMailer, type: :mailer do
  describe "welcome_email" do
    let(:mail) { NotificationMailer.welcome_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome email")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "article_create" do
    let(:mail) { NotificationMailer.article_create }

    it "renders the headers" do
      expect(mail.subject).to eq("Article create")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "push_notification" do
    let(:mail) { NotificationMailer.push_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("Push notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
