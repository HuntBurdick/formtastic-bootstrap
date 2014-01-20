class BootstrapCheckboxInput

	include Formtastic::Inputs::Base

   # determine whether input is required in view.
  

  def to_html

    puts @object.class

  	"<div class='checkbox #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
  		"<input type='hidden' value='0' name='#{@object.class.name.downcase}[#{input_name}]'>".html_safe +
      "<label>".html_safe +
      	"<input id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' type='checkbox' value='1' #{@object.send(method) == true ? 'checked=checked' : false}>".html_safe +
    		"#{input_name.to_s.humanize}".html_safe +
    	"</label>".html_safe +
    "</div>".html_safe

  end
end
