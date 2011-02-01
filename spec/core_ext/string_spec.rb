# coding: utf-8
require 'spec_helper'

describe String do
  describe '#to_yodish' do

    it 'reverses words' do
      string = 'fear is the path to the dark side'
      string.to_yodish.should == 'side dark the to path the is fear'
    end
    
    it 'leaves the punctuation marks on the old places' do
      string = 'fear- the path to the dark side.'
      string.to_yodish.should == 'side- dark the to path the fear.'
    end
    
    it 'leaves the space before punctuation marks on the old places' do
      string = 'fear - the path to the dark side.'
      string.to_yodish.should == 'side - dark the to path the fear.'
    end

    it 'leaves capital letters on the same places' do
      string = 'Fear is the Path to the dARK side'
      string.to_yodish.should == 'Side daRK the To path the iS fear'
    end

    it "don't missing one-charachter words" do
      string = 'fear is the path to a dark side'
      string.to_yodish.should == 'side dark a to path the is fear'
    end
    
    it "support non-latin characters" do
      string = 'Страх - это путь на темную сторону'
      string.to_yodish.should == 'Сторону - темную на путь это страх'
    end

  end
end
