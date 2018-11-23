include Count::Bits

RSpec.describe Count::Bits do
  it 'has a version number' do
    expect(Count::Bits::VERSION).not_to be nil
  end

  describe '#perform' do
    let(:fixture) { fixture_folder.join('20181028-DSC07521-1333x750.jpg') }

    describe 'zero counting' do
      subject { perform(fixture)[:zeros] }
      it { is_expected.to be > 0 }
    end

    describe 'one counting' do
      subject { perform(fixture)[:ones] }
      it { is_expected.to be > 0 }
    end
  end
end
