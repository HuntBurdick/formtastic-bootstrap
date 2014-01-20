class BootstrapDatepickerInput

	include Formtastic::Inputs::Base

  def to_html

  	"<div class='form-group #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
      "#{label_html}".html_safe +
      "<input id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' type='string' class='form-control datepicker' value='#{@object.send(method)}' placeholder='Choose Date' readonly>".html_safe +
    "</div>".html_safe

  end
end