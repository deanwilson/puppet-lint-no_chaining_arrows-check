require 'spec_helper'

describe 'no_chaining_arrows' do
  let(:msg) { 'chaining arrow found' }

  %w[-> ~> <- <~].each do |op|
    context "when chaining resources with #{op}" do
      let(:code) { "Class[foo] #{op} Class[bar]" }

      it 'detects a single problem' do
        expect(problems).to have(1).problem
      end

      it 'creates a warning' do
        expect(problems).to contain_warning(msg).on_line(1).in_column(12)
      end
    end
  end
end
