require "spec_helper"
require "generators/stormpath/rails/install/install_generator"

describe Stormpath::Rails::Generators::InstallGenerator do
  it "creates a configuration file" do
    subject.should_receive(:create_file).with("config/stormpath.yml", kind_of(String))
    subject.create_initializer_file
  end
end
