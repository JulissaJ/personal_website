require 'pry'
require File.expand_path '../spec_helper.rb', __FILE__

# Check out the cheat sheet here for capybara matchers http://www.launchacademy.com/codecabulary/learn-test-driven-development/rspec/capybara-cheat-sheet
describe 'the greatest wizard bio of all time' do
  before(:each) do
    visit('/')
  end

  it 'has an awesome title' do
    within(:css, "h1.responsive-headline") do
      expect(page).to have_content("I'm Faizaan the Wizard")
    end
  end

  it 'has 6 items in the main nav' do
    nav_bar = page.find('ul#nav')
    expect(nav_bar).to have_css('li', count: 6)
  end

  it 'has an education from Hogwarts' do
    within(:css, "section#resume") do
      expect(page).to have_content("Hogwarts")
    end
  end

  it 'has a testimonial written by Adam Sheehan' do
    within(:css, "section#testimonials") do
      expect(page).to have_css('cite', text: 'Adam Sheehan')
    end
  end

  it 'has a button to book Faizaan the Wizard' do
    book_faizaan = page.find('section#call-to-action')
    expect(book_faizaan).to have_css('a.button', text: 'Wizard me now')
  end

  it 'has 7 social media sharing links' do
     social_links = page.find('ul.social')
     expect(social_links).to have_css('li', count: 7)
  end

  it 'has an about section' do
    within(:css, "section#about") do
      expect(page).to have_content("About Me")
    end
  end


  it 'has a link to download the wizards resume' do
   wizards_resume = page.find('div.download a')
   expect(wizards_resume).to have_content('Download Resume')
 end


  it 'has a testimonial by Harry Potter' do
    within(:css, "section#testimonials") do
      expect(page).to have_css('cite', text: 'Harry Potter')
    end
  end

  it "has a form field with the placeholder 'I no longer want to be a vegan'" do
    within(:css, 'form#contactForm') do
    expect(page).to have_css('input[placeholder="I no longer want to be a vegan"]')
  end
end

  it 'has a section with the id of contact' do
    within(:css, "section#contact") do
      expect(page).to have_content("Get In Touch.")
    end
  end


  it "has an h1 tag with the content 'client testimonials'" do
    within(:css, "section#testimonials") do
    expect(page).to have_content('Client Testimonials')
  end
end

end
