class ImageInput < Formtastic::Inputs::FileInput
  def image_html_options
    {class: 'image'}.merge(options.fetch(:image_html, {}))
  end

  def to_html
    input_wrapping do
      label_html <<
      image_html <<
      builder.file_field(method, input_html_options)
    end
  end

  protected
  def image_html
    return ''.html_safe if builder.object.new_record?
    image = options[:image]

    url = case image
    when Symbol
      builder.object.send(image)
    when Proc
      image.call(builder.object)
    else
      image.to_s
    end

    builder.template.image_tag(url, image_html_options).html_safe
  end
end
