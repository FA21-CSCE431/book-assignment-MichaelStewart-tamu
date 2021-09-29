# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry 2', author: 'J.K. Rowling')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry 3', author: 'J.K. Rowling', price: '20')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

#  it 'is not valid without a name' do
#    subject.price = nil
#    expect(subject).not_to be_valid
#  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry 4', author: 'J.K. Rowling', price: '20', published_date: '2021-09-28 00:00:00 UTC')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

#  it 'is not valid without a name' do
#    subject.published_date = nil
#    expect(subject).not_to be_valid
#  end
end
