require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'oc-limits::default' do
  context 'ubuntu 12.04' do
    let(:chef_run) do
      ChefSpec::Runner.new(
        :platform => 'ubuntu',
        :version => '12.04'
      ).converge(described_recipe)
    end

    it 'creates a template for limits.conf' do
      expect(chef_run).to create_template('/etc/security/limits.conf')
    end

    it 'creates a template for runsvdir.conf' do
      expect(chef_run).to create_template('/etc/init/runsvdir.conf')
    end

    it 'sends the notification to restart runit' do
      expect(chef_run.template('/etc/init/runsvdir.conf')).to notify('bash[restart runit]').to(:run).immediately
    end
  end
end
