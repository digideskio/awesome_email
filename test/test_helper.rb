# coding: utf-8
$KCODE = 'u' unless RUBY_VERSION >= '1.9'

class Test::Unit::TestCase
  
  protected
    
    def find_rules(html)
      css_doc = @mailer.parse_css_doc(@css)
      html_doc = @mailer.parse_html_doc(html)
      css_doc.rule_sets
    end
    
    def render_inline(html)
      css_doc = @mailer.parse_css_doc(@css)
      html_doc = @mailer.parse_html_doc(html)
      @mailer.render_inline(css_doc, html_doc)
    end
    
    def build_html(content = '', head = '')
      %Q{<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">#{head}</head><body>#{content}</body></html>}
    end
    
end