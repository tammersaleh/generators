step "I should see a success message" do
  expect(page).to have_selector("div.alert.alert-success")
end

step "I am on the home page" do
  visit "/"
end

step "save and open page" do
  save_and_open_page
end
