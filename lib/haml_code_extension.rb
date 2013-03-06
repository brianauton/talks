require "haml"
module Haml::Filters::Code
  include Haml::Filters::Base
  def render(text)
    escaped = Haml::Helpers.html_escape text
    "<pre><code>#{escaped.strip}</code></pre>"
  end
end

module Haml::Filters::Code_Coffee
  include Haml::Filters::Base
  def render(text)
    escaped = Haml::Helpers.html_escape text
    "<pre><code class='cs'>#{escaped.strip}</code></pre>"
  end
end

module Haml::Filters::Code_Js
  include Haml::Filters::Base
  def render(text)
    escaped = Haml::Helpers.html_escape text
    "<pre><code class='javascript'>#{escaped.strip}</code></pre>"
  end
end

module Haml::Filters::Code_plain
  include Haml::Filters::Base
  def render(text)
    escaped = Haml::Helpers.html_escape text
    "<pre style='color:#ccc; background:black; padding:5px; margin 1em 0; width:89%'>#{escaped.strip}</pre>"
  end
end
