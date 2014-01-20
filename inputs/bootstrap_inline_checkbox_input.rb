class BootstrapInlineCheckboxInput

	include Formtastic::Inputs::Base

  def to_html

  	"<div class='checkbox-inline #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
  		"<input type='hidden' value='0' name='#{@object.class.name.downcase}[#{input_name}]'>".html_safe +
      "<label>".html_safe +
      	"<input id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' type='checkbox' value='1' #{@object.send(method) == true ? 'checked=checked' : false}>".html_safe +
    		"#{input_name.to_s.humanize}".html_safe +
    	"</label>".html_safe +
    "</div>".html_safe

  end
end