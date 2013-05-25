step 'I should see a validation error on :field_name' do |field_name|
  expect(page).to have_selector(".error label[contains('#{field_name}')]")
end
