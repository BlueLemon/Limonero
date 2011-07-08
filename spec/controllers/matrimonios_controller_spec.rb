require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MatrimoniosController do

  # This should return the minimal set of attributes required to create a valid
  # Matrimonio. As you add validations to Matrimonio, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all matrimonios as @matrimonios" do
      matrimonio = Matrimonio.create! valid_attributes
      get :index
      assigns(:matrimonios).should eq([matrimonio])
    end
  end

  describe "GET show" do
    it "assigns the requested matrimonio as @matrimonio" do
      matrimonio = Matrimonio.create! valid_attributes
      get :show, :id => matrimonio.id.to_s
      assigns(:matrimonio).should eq(matrimonio)
    end
  end

  describe "GET new" do
    it "assigns a new matrimonio as @matrimonio" do
      get :new
      assigns(:matrimonio).should be_a_new(Matrimonio)
    end
  end

  describe "GET edit" do
    it "assigns the requested matrimonio as @matrimonio" do
      matrimonio = Matrimonio.create! valid_attributes
      get :edit, :id => matrimonio.id.to_s
      assigns(:matrimonio).should eq(matrimonio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Matrimonio" do
        expect {
          post :create, :matrimonio => valid_attributes
        }.to change(Matrimonio, :count).by(1)
      end

      it "assigns a newly created matrimonio as @matrimonio" do
        post :create, :matrimonio => valid_attributes
        assigns(:matrimonio).should be_a(Matrimonio)
        assigns(:matrimonio).should be_persisted
      end

      it "redirects to the created matrimonio" do
        post :create, :matrimonio => valid_attributes
        response.should redirect_to(Matrimonio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved matrimonio as @matrimonio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Matrimonio.any_instance.stub(:save).and_return(false)
        post :create, :matrimonio => {}
        assigns(:matrimonio).should be_a_new(Matrimonio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Matrimonio.any_instance.stub(:save).and_return(false)
        post :create, :matrimonio => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested matrimonio" do
        matrimonio = Matrimonio.create! valid_attributes
        # Assuming there are no other matrimonios in the database, this
        # specifies that the Matrimonio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Matrimonio.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => matrimonio.id, :matrimonio => {'these' => 'params'}
      end

      it "assigns the requested matrimonio as @matrimonio" do
        matrimonio = Matrimonio.create! valid_attributes
        put :update, :id => matrimonio.id, :matrimonio => valid_attributes
        assigns(:matrimonio).should eq(matrimonio)
      end

      it "redirects to the matrimonio" do
        matrimonio = Matrimonio.create! valid_attributes
        put :update, :id => matrimonio.id, :matrimonio => valid_attributes
        response.should redirect_to(matrimonio)
      end
    end

    describe "with invalid params" do
      it "assigns the matrimonio as @matrimonio" do
        matrimonio = Matrimonio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Matrimonio.any_instance.stub(:save).and_return(false)
        put :update, :id => matrimonio.id.to_s, :matrimonio => {}
        assigns(:matrimonio).should eq(matrimonio)
      end

      it "re-renders the 'edit' template" do
        matrimonio = Matrimonio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Matrimonio.any_instance.stub(:save).and_return(false)
        put :update, :id => matrimonio.id.to_s, :matrimonio => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested matrimonio" do
      matrimonio = Matrimonio.create! valid_attributes
      expect {
        delete :destroy, :id => matrimonio.id.to_s
      }.to change(Matrimonio, :count).by(-1)
    end

    it "redirects to the matrimonios list" do
      matrimonio = Matrimonio.create! valid_attributes
      delete :destroy, :id => matrimonio.id.to_s
      response.should redirect_to(matrimonios_url)
    end
  end

end
