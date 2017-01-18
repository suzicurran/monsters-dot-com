require "rails_helper"

feature "visitor sees page of all monsters" do
  scenario "sees names for all monsters in db" do

    monster_1 = Monster.create(name: 'Durin\'s Bane', source: 'http://lotr.wikia.com/wiki/Durin\'s_Bane', img: 'http://static.comicvine.com/uploads/original/5/56730/1086678-balrog2apj.jpg', description: 'Durin\'s Bane refers to the particular Balrog of Morgoth that had fled following Morgoth\'s defeat during the War of Wrath to live and slumber deep within the depths of the Dwarven kingdom of Moria during the Third Age.', email: 'Shadow_and_flame@moria.net')
    monster_2 = Monster.create(name: 'Napstablook', source: 'http://undertale.wikia.com/wiki/Napstablook', img: 'https://cdn.thingiverse.com/renders/2f/f2/a6/b2/c5/blooky_preview_featured.jpg', description: 'Napstablook, known in the UnderNet as NAPSTABLOOK22, is a melancholic ghost monster and musician/DJ who lives in Waterfall, encountered in the Ruins as Undertale\'s first miniboss.', email: 'Napstablook22@undernet.com')
    monster_3 = Monster.create(name: 'Cookie Monster', source: 'https://en.wikipedia.org/wiki/Cookie_Monster', img: 'http://www.grindtv.com/wp-content/uploads/2013/09/cookiemonster.jpeg', description: 'Cookie Monster is a Muppet on the long-running children\'s television show Sesame Street. He is best known for his voracious appetite and his famous eating phrases, such as "Me want cookie!" "Me eat cookie!" and "Om nom nom nom".', email: 'mewantcookie@sstreet.org')

    visit root_path

    expect(page).to have_content monster_1.name
    expect(page).to have_content monster_2.name
    expect(page).to have_content monster_3.name
  end
end
