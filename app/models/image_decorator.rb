Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    mini: '48x48>', # thumbs under image
    small: '200x250>', # images on category view
    product: '400x500>', # full product image
    large: '600x600>' # light box image
  }
end
