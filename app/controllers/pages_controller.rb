class PagesController < ApplicationController
  def admin
    @patients = Patient.all
  end

  def contact
    @enquiry = Enquiry.new
  end

  def about
  end

  def team
  end

  def faq
  end

  def customer
  end

  def thanks
  end
end
