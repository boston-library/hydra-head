require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class HydraControllerTest < ActionController::Base
end
describe HydraControllerTest do
  
  after :all do
    Object.send(:remove_const, :HydraControllerTest)
  end
  
  it "should add the necessary helpers to classes that include it" do
    HydraControllerTest.should_receive(:helper).with(:hydra)
    HydraControllerTest.should_receive(:helper).with(:hydra_assets)
    HydraControllerTest.stub(:before_filter)
    HydraControllerTest.send(:include, Hydra::Controller::ControllerBehavior)
  end
  
  describe "load_fedora_document" do
    before :all do
      @behavior = Hydra::Controller::ControllerBehavior.deprecation_behavior
      Hydra::Controller::ControllerBehavior.deprecation_behavior = :silence
    end

    after :all do
      Hydra::Controller::ControllerBehavior.deprecation_behavior = @behavior
    end

    before do
      HydraControllerTest.send(:include, Hydra::Controller::ControllerBehavior)
    end


    it "should load @document_fedora and @file_assets" do
      controller.params[:id] = 'hydrangea:fixture_mods_article1'
      controller.load_fedora_document
      
      assigns[:document_fedora].class.should == ModsAsset 
      assigns[:document_fedora].pid.should == 'hydrangea:fixture_mods_article1' 
      assigns[:file_assets].size.should == 1
      assigns[:file_assets].first["id"].should == "hydrangea:fixture_uploaded_svg1"
    end
  end
end