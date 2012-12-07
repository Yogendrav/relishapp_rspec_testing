require 'spec_helper'

RSpec.configure {|c| c.before { expect(controller).not_to be_nil }}

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

describe WidgetsController do
  it "routes to /widgets" do
    expect(:get => "/widgets").to be_routable
  end
  #context "with render_views" do
   # render_views

  # This should return the minimal set of attributes required to create a valid
  # Widget. As you add validations to Widget, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WidgetsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  # describe "index" do
  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #     expect(response.body).to eq ""
  #   end
  #   it "renders the widgets/index template" do
  #     get :index
  #     expect(response).to render_template("widgets/index")
  #     expect(response.body).to eq ""
  #   end
  # end

  # describe "index" do
  #   it "renders the 'new' template" do
  #     get :index
  #     expect(response).to render_template("new")
  #   end
  # end

  # describe "GET index" do
  #   # it "assigns all widgets as @widgets" do
  #   #   widget = Widget.create! valid_attributes
  #   #   get :index, {}, valid_session
  #   #   assigns(:widgets).should eq([widget])
  #   # end
  #   it "renders the actual template" do
  #     get :index
  #     expect(response.body).to match /Listing widgets/m
  #   end
  # end

  # context "with render_views(false) nested in a group with render_views" do
  #   render_views false

  #   describe "GET index" do
  #     it "renders the RSpec generated template" do
  #       get :index
  #       expect(response.body).to eq("")
  #     end
  #   end
  # end

  # context "without render_views" do
  #   describe "GET index" do
  #     it "renders the RSpec generated template" do
  #       get :index
  #       expect(response.body).to eq("")
  #     end
  #   end 
  # end

  # context "with render_views again" do
  #   render_views


    describe "GET index" do
      it "renders the index template" do
        get :index
        expect(response.body).to match /Listing widgets/m
      end
    end
  # end


  describe "GET show" do
    it "assigns the requested widget as @widget" do
      widget = Widget.create! valid_attributes
      get :show, {:id => widget.to_param}, valid_session
      assigns(:widget).should eq(widget)
    end
  end

  describe "GET new" do
    it "assigns a new widget as @widget" do
      get :new, {}, valid_session
      assigns(:widget).should be_a_new(Widget)
    end
  end

  describe "GET edit" do
    it "assigns the requested widget as @widget" do
      widget = Widget.create! valid_attributes
      get :edit, {:id => widget.to_param}, valid_session
      assigns(:widget).should eq(widget)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Widget" do
        expect {
          post :create, {:widget => valid_attributes}, valid_session
        }.to change(Widget, :count).by(1)
      end

      it "assigns a newly created widget as @widget" do
        post :create, {:widget => valid_attributes}, valid_session
        assigns(:widget).should be_a(Widget)
        assigns(:widget).should be_persisted
      end

      it "redirects to the created widget" do
        post :create, {:widget => valid_attributes}, valid_session
        response.should redirect_to(Widget.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved widget as @widget" do
        # Trigger the behavior that occurs when invalid params are submitted
        Widget.any_instance.stub(:save).and_return(false)
        post :create, {:widget => { "name" => "invalid value" }}, valid_session
        assigns(:widget).should be_a_new(Widget)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Widget.any_instance.stub(:save).and_return(false)
        post :create, {:widget => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested widget" do
        widget = Widget.create! valid_attributes
        # Assuming there are no other widgets in the database, this
        # specifies that the Widget created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Widget.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => widget.to_param, :widget => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested widget as @widget" do
        widget = Widget.create! valid_attributes
        put :update, {:id => widget.to_param, :widget => valid_attributes}, valid_session
        assigns(:widget).should eq(widget)
      end

      it "redirects to the widget" do
        widget = Widget.create! valid_attributes
        put :update, {:id => widget.to_param, :widget => valid_attributes}, valid_session
        response.should redirect_to(widget)
      end
    end

    describe "with invalid params" do
      it "assigns the widget as @widget" do
        widget = Widget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Widget.any_instance.stub(:save).and_return(false)
        put :update, {:id => widget.to_param, :widget => { "name" => "invalid value" }}, valid_session
        assigns(:widget).should eq(widget)
      end

      it "re-renders the 'edit' template" do
        widget = Widget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Widget.any_instance.stub(:save).and_return(false)
        put :update, {:id => widget.to_param, :widget => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested widget" do
      widget = Widget.create! valid_attributes
      expect {
        delete :destroy, {:id => widget.to_param}, valid_session
      }.to change(Widget, :count).by(-1)
    end

    it "redirects to the widgets list" do
      widget = Widget.create! valid_attributes
      delete :destroy, {:id => widget.to_param}, valid_session
      response.should redirect_to(widgets_url)
    end
  end
end

describe WidgetsController do

  describe "#create" do
    subject { post :create, :widget => { :name => "Foo" } }

    it "redirects to widget_url(@widget)" do
      expect(subject).to redirect_to(widget_url(assigns(:widget)))
    end

    it "redirects_to :action => :show" do
      expect(subject).to redirect_to :action => :show,
                                     :id => assigns(:widget).id
    end

    it "redirects_to(@widget)" do
      expect(subject).to redirect_to(assigns(:widget))
    end

    it "redirects_to /widgets/:id" do
      expect(subject).to redirect_to("/widgets/#{assigns(:widget).id}")
    end
  end
end