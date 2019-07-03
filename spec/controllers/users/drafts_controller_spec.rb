require 'rails_helper'

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
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe Users::DraftsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Users::Draft. As you add validations to Users::Draft, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip("Add a hash of attributes valid for your model")
  end

  let(:invalid_attributes) do
    skip("Add a hash of attributes invalid for your model")
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Users::DraftsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    xit "returns a success response" do
      Users::Draft.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    xit "returns a success response" do
      draft = Users::Draft.create! valid_attributes
      get :show, params: { id: draft.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    xit "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    xit "returns a success response" do
      draft = Users::Draft.create! valid_attributes
      get :edit, params: { id: draft.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      xit "creates a new Users::Draft" do
        expect do
          post :create, params: { users_draft: valid_attributes }, session: valid_session
        end.to change(Users::Draft, :count).by(1)
      end

      xit "redirects to the created users_draft" do
        post :create, params: { users_draft: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Users::Draft.last)
      end
    end

    context "with invalid params" do
      xit "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { users_draft: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        skip("Add a hash of attributes valid for your model")
      end

      xit "updates the requested users_draft" do
        draft = Users::Draft.create! valid_attributes
        put :update, params: { id: draft.to_param, users_draft: new_attributes }, session: valid_session
        draft.reload
        skip("Add assertions for updated state")
      end

      xit "redirects to the users_draft" do
        draft = Users::Draft.create! valid_attributes
        put :update, params: { id: draft.to_param, users_draft: valid_attributes }, session: valid_session
        expect(response).to redirect_to(draft)
      end
    end

    context "with invalid params" do
      xit "returns a success response (i.e. to display the 'edit' template)" do
        draft = Users::Draft.create! valid_attributes
        put :update, params: { id: draft.to_param, users_draft: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    xit "destroys the requested users_draft" do
      draft = Users::Draft.create! valid_attributes
      expect do
        delete :destroy, params: { id: draft.to_param }, session: valid_session
      end.to change(Users::Draft, :count).by(-1)
    end

    xit "redirects to the users_drafts list" do
      draft = Users::Draft.create! valid_attributes
      delete :destroy, params: { id: draft.to_param }, session: valid_session
      expect(response).to redirect_to(users_drafts_url)
    end
  end
end