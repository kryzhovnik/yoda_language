require 'rails'
require 'core_ext/string'

module YodaLanguage
  def yoda_language(string)
    string.to_yodish
  end  
end

if defined?(::ActionView)
  ActionView::Base.send(:include, YodaLanguage)
end

