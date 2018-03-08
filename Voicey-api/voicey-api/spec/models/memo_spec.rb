require 'rails_helper'

RSpec.describe Memo, type: :model do
    subject {
        User.new(name: "Eliel", email: "eliel@test.com")
    }

    describe "Validations" do
        it "is valid with valid attributes" do
          memo = Memo.new(title: "Voice Memo",
                          date: DateTime.now.utc,
                          text_body: "This is Test",
                          user: subject
                          )
          expect(memo).to be_valid
        end

        it "is invalid without a title" do
            bad_memo = Memo.new(title: nil,
                                date: DateTime.now.utc,
                                text_body: "This is Test",
                                user: subject
                                )
            expect(bad_memo).to_not be_valid
        end

        it "is invalid without a date" do
            bad_memo = Memo.new(title: "Voice Memo",
                                date: nil,
                                text_body: "This is Test",
                                user: subject
                                )
            expect(bad_memo).to_not be_valid
        end

        it "is invalid without a text_body" do
            bad_memo = Memo.new(title: "Voice Memo",
                                date: DateTime.now.utc,
                                text_body: nil,
                                user: subject
                                )
            expect(bad_memo).to_not be_valid
        end

        it "is invalid without a user" do
            bad_memo = Memo.new(title: "Voice Memo",
                                date: DateTime.now.utc,
                                text_body: "This is Test",
                                user: nil
                                )
            expect(bad_memo).to_not be_valid
        end

        describe "Associations" do
            it "should have a user" do
                assoc = Memo.reflect_on_association(:user)
                expect(assoc.macro).to eq :belongs_to
            end
        end
    end

end
