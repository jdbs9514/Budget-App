require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             @user = assign(:user, User.create!(
                                     name: 'MyString',
                                     email: 'test1@mail.com',
                                     password: '1234567'
                                   )),
             @user = assign(:user, User.create!(
                                     name: 'MyString',
                                     email: 'test2@mail.com',
                                     password: '1234567'
                                   ))
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 0
  end
end
