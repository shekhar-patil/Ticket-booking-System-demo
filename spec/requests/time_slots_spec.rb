 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/time_slots", type: :request do
  
  # TimeSlot. As you add validations to TimeSlot, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TimeSlot.create! valid_attributes
      get time_slots_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      time_slot = TimeSlot.create! valid_attributes
      get time_slot_url(time_slot)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_time_slot_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      time_slot = TimeSlot.create! valid_attributes
      get edit_time_slot_url(time_slot)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TimeSlot" do
        expect {
          post time_slots_url, params: { time_slot: valid_attributes }
        }.to change(TimeSlot, :count).by(1)
      end

      it "redirects to the created time_slot" do
        post time_slots_url, params: { time_slot: valid_attributes }
        expect(response).to redirect_to(time_slot_url(TimeSlot.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TimeSlot" do
        expect {
          post time_slots_url, params: { time_slot: invalid_attributes }
        }.to change(TimeSlot, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post time_slots_url, params: { time_slot: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested time_slot" do
        time_slot = TimeSlot.create! valid_attributes
        patch time_slot_url(time_slot), params: { time_slot: new_attributes }
        time_slot.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the time_slot" do
        time_slot = TimeSlot.create! valid_attributes
        patch time_slot_url(time_slot), params: { time_slot: new_attributes }
        time_slot.reload
        expect(response).to redirect_to(time_slot_url(time_slot))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        time_slot = TimeSlot.create! valid_attributes
        patch time_slot_url(time_slot), params: { time_slot: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested time_slot" do
      time_slot = TimeSlot.create! valid_attributes
      expect {
        delete time_slot_url(time_slot)
      }.to change(TimeSlot, :count).by(-1)
    end

    it "redirects to the time_slots list" do
      time_slot = TimeSlot.create! valid_attributes
      delete time_slot_url(time_slot)
      expect(response).to redirect_to(time_slots_url)
    end
  end
end