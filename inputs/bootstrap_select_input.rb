class BootstrapSelectInput

	include Formtastic::Inputs::Base
	include Formtastic::Inputs::Base::Collections

	

  def to_html

  	choices = ""
  	i = 0

		collection.each_with_index do |option, index|
			i + 1

			choices += "<option value='#{collection[index][1]}'>#{collection[index][0]}</option>"
		end


  	"<div class='form-group #{@object.class.validators_on(input_name).map(&:class).include?(ActiveRecord::Validations::PresenceValidator) ? 'required' : '' }'>".html_safe +
  	"#{label_html}".html_safe +
		  "<select class='form-control' id='#{@object.class.name.downcase}_#{input_name}' name='#{@object.class.name.downcase}[#{input_name}]' type='string' class='form-control' value='#{@object.send(method)}'>".html_safe +
		  	"#{options[:include_blank] == true ? '<option value=''></option>' : ''}".html_safe +
		  	"#{choices}".html_safe +
		  "</select>".html_safe +
	  "</div>".html_safe

  end

end