require "rails_helper"

feature "Any review" do
  scenario "can be deleted by an admin" do

    User.create(username: "admin", email: "admin@example.com", password: "password", admin: true)
    user1 = User.create(username: "Sam", email: "sam@example.com", password: "password")
    User.create(username: "Bob", email: "bob@example.com", password: "password")

    monster2 = Monster.create(
      user_id: user1.id,
      name: 'Napstablook', source: 'http://undertale.wikia.com/wiki/Napstablook',
      img: 'https://cdn.thingiverse.com/renders/2f/f2/a6/b2/c5/blooky_preview_featured.jpg',
      description: 'Napstablook, is a melancholic ghost monster and musician/DJ
      who lives in Waterfall.',
      email: 'Napstablook22@undernet.com'
    )

    Review.create(
      grossness: 3,
      scariness: 5,
      cleverness: 2,
      bigness: 6,
      badness: 4,
      body: "Stupid scary monster!",
      user_id: user1.id,
      monster_id: monster2.id
    )

    visit root_path
    click_link 'Login'
    fill_in 'Email', with: 'admin@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit monsters_path
    click_link 'Napstablook'

    expect(page).to have_content "Edit review"
    click_link 'Edit review'
    expect(page).to have_content "Delete"
    click_link 'Delete'

    expect(page).to have_content "Review was successfully destroyed."

  end

  scenario "cannot be deleted by a user" do

    User.create(username: "admin", email: "admin@example.com", password: "password", admin: true)
    user1 = User.create(username: "Sam", email: "sam@example.com", password: "password")
    User.create(username: "Bob", email: "bob@example.com", password: "password")

    Monster.create(
      user_id: user1.id,
      name: 'Napstablook', source: 'http://undertale.wikia.com/wiki/Napstablook',
      img: 'https://cdn.thingiverse.com/renders/2f/f2/a6/b2/c5/blooky_preview_featured.jpg',
      description: 'Napstablook, is a melancholic ghost monster and musician/DJ
      who lives in Waterfall.',
      email: 'Napstablook22@undernet.com'
    )

    visit monsters_path
    click_link 'Login'
    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit monsters_path
    click_link 'Napstablook'

    expect(page).not_to have_content "Edit this monster"

  end
end
