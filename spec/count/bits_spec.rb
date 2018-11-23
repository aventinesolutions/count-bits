include Count::Bits

RSpec.describe Count::Bits do
  it 'has a version number' do
    expect(Count::Bits::VERSION).not_to be nil
  end

  describe '#perform' do
    let(:fixture) { fixture_folder.join('20181028-DSC07521-1333x750.jpg') }

    describe 'zero counting' do
      subject { perform(fixture)['0'] }
      it { is_expected.to be == 1_103_884 }
    end

    describe 'one counting' do
      subject { perform(fixture)['1'] }
      it { is_expected.to be == 1_399_531 }
    end
  end
end
