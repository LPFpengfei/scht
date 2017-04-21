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
end