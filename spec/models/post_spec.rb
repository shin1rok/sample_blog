require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'バリデーション' do
    subject { post.valid? }
    context '正しいパラメータが設定された場合' do
      let!(:post) { build(:post) }
      it { is_expected.to be_truthy }
    end
    describe 'title' do
      context '空の場合' do
        let!(:post) { build(:post, title: nil) }
        it { is_expected.to be_falsey }
      end
      context '256文字以内の場合' do
        let!(:post) { build(:post, title: 'あ' * 256) }
        it { is_expected.to be_truthy }
      end
      context '256文字より多いの場合' do
        let!(:post) { build(:post, title: 'あ' * 257) }
        it { is_expected.to be_falsey }
      end
    end

    describe 'content' do
      context '空の場合' do
        let!(:post) { build(:post, content: nil) }
        it { is_expected.to be_falsey }
      end
      context '100000文字以内の場合' do
        let!(:post) { build(:post, content: 'あ' * 100_000) }
        it { is_expected.to be_truthy }
      end
      context '100000文字より多いの場合' do
        let!(:post) { build(:post, content: 'あ' * 100_001) }
        it { is_expected.to be_falsey }
      end
    end
  end
end
