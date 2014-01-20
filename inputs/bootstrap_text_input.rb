class BootstrapTextInput

	include Formtastic::Inputs::Base

  def to_html

    "<div class='form-group #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
      "#{label_html}".html_safe +
      "<textarea id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' rows='10' class='form-control'>#{@object.send(method)}</textarea>".html_safe +
    "</div>".html_safe

  end
end