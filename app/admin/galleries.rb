ActiveAdmin.register Gallery do
  menu parent: 'Content',
       label: 'Gallery',
       url: '/admin/gallery'

  controller do
    def permitted_params
      params.permit!
    end
  end

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.has_many :gallery_items, new_record: 'New gallery item', remove_record: 'Remove gallery item', allow_destroy: true do |o|
        o.input :title
        o.input :cover, as: :file
        o.input :pictures, as: :file, input_html: { multiple: true }
      end

      actions do
        action :submit
        cancel_link '/admin/gallery'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= Gallery.first
    end
  end
end
