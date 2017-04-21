module CustomFormHelper
  def custom_form_for(object, *args, &block)
    options = args.extract_options!
    simple_form_for(object, *(args << options.merge(builder: CustomFormBuilder)), &block)
  end

  class CustomFormBuilder < SimpleForm::FormBuilder
    def input(attribute_name, options = {}, &block)
      super(attribute_name, options.reverse_merge(label: false, wrapper: false, input_html: { class: 'form-control' }), &block)
    end
  end

  def link_to_add_my_fields(name)
    fields = render("product_attribute_definition_fields")
    link_to(name, "javascript:add_fields(this, \"#{escape_javascript(fields)}\")")
  end
end