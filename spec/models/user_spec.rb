require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーション' do
    subject { user.valid? }
    context '正しいパラメータが設定された場合' do
      let!(:user) { build(:user) }
      it { is_expected.to be_truthy }
    end
    describe 'email' do
      context '空の場合' do
        let!(:user) { build(:user, email: nil) }
        it { is_expected.to be_falsey }
      end
      context 'メールアドレスの形式でない場合' do
        let!(:user) { build(:user, email: 'string') }
        it { is_expected.to be_falsey }
      end
    end
    describe 'password' do
      context '空の場合' do
        let!(:user) { build(:user, password: nil) }
        it { is_expected.to be_falsey }
      end
      context '6文字未満の場合' do
        let!(:user) { build(:user, password: 'a' * 5) }
        it { is_expected.to be_falsey }
      end
      context '6文字以上の場合' do
        let!(:user) { build(:user, password: 'a' * 6) }
        it { is_expected.to be_truthy }
      end
    end
  end
end
