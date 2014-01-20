class BootstrapTimepickerInput

	include Formtastic::Inputs::Base

  def to_html

  	"<div class='form-group #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
      "#{label_html}".html_safe +
      "<input id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' type='string' class='form-control timepicker' value='#{@object.send(method)}' placeholder='Choose Time' readonly>".html_safe +
    "</div>".html_safe

  end
end