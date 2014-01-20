formtastic-bootstrap
====================

Integrate formtastic with standard Bootstrap markup.


<%= semantic_form_for @test, :url => 'url_for_action' do |form| %>
	
	<h2>String Inputs</h2>
	<%= form.input :string, :as => :bootstrap_string %>
	<%= form.input :string, :as => :bootstrap_string %>

	<hr />



	<h2>Text Inputs</h2>
	<%= form.input :text, :as => :bootstrap_text %>
	<%= form.input :text, :as => :bootstrap_text %>

	<hr />



	<h2>Password Inputs</h2>
	<%= form.input :text, :as => :bootstrap_password %>
	<%= form.input :text, :as => :bootstrap_password %>

	<hr />



	<h2>Checkbox Inputs</h2>
	<h5>Regular Checkboxes</h5>
	<hr />
	<%= form.input :boolean, :as => :bootstrap_checkbox %>
	<%= form.input :boolean, :as => :bootstrap_checkbox %>

	<h5>Inline Checkboxes</h5>
	<hr />
	<%= form.input :boolean, :as => :bootstrap_inline_checkbox %>
	<%= form.input :boolean, :as => :bootstrap_inline_checkbox %>
	<%= form.input :boolean, :as => :bootstrap_inline_checkbox %>
	<%= form.input :boolean, :as => :bootstrap_inline_checkbox %>

	<hr />



	<h2>Radio Inputs</h2>
	<%= form.input :boolean, :as => :bootstrap_radio %>
	<%= form.input :boolean, :as => :bootstrap_radio %>
	<%= form.input :boolean, :as => :bootstrap_radio %>

	<hr />



	<h2>Select Inputs</h2>
	<!-- Works Properly. Collection arrays must have an index. this will not work => ["Justin", "Kate", "Amelia", "Gus", "Meg"] -->
	<%= form.input :string, :as => :bootstrap_select, :collection => [["Justin", "J"], ["Bob", "B1"], ["Joe", "joe"]] %>
	<%= form.input :string, :as => :bootstrap_select, :collection => Page.all, :include_blank => true %>

	<hr />

	<h2>Date/Time Inputs</h2>
	<p>Date Select</p>
	<%= form.input :date, :as => :bootstrap_datepicker %>

	<p>DateTime Select</p>
	<%= form.input :datetime, :as => :bootstrap_datetimepicker %>

	<p>Time Select</p>
	<%= form.input :time, :as => :bootstrap_timepicker %>

	<hr />

	<h2>File Attachements</h2>

<% end %>