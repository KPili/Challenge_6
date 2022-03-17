ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image # Notice image was added after active storage config of customer model

  # Default code taken from active admin site [https://activeadmin.info/5-forms.html#default]
  # DSL - Domain Specific Language
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
    # input for the file attachment piece
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image, width: "300") : "" # Hint allows us to preview uploaded images in active admin
    end
  end
end

# NOTE: Forms in active admin are implemented with formtastic github repo
