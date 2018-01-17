RSpec.describe Sidekiq::Limiter do

  it 'responds to #window' do
    expect(described_class).to respond_to(:window)
  end

  context 'the object returned by #window' do
    subject { described_class.window('prevent_feedback_spam', 4, :minute) }

    it 'responds to #within_limit' do
      expect(subject).to respond_to(:within_limit)
    end

    it 'yields code block' do
      expect(subject.within_limit { return 999 } ).to eq(999)
    end
  end
end
