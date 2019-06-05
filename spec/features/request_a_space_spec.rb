feature 'Request to book' do 

    scenario 'user can request to book a space' do 
        User.create(email:"gary@me.com", password: "hello")
        space = Listing.create(name: "Franks house", description: "Lovely place", price: "23")
        visit('/spaces')
        click_link(space.name)

        expect(current_path).to eq("/spaces/#{space.prop_id}")
    end 
end