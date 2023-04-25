ActiveAdmin.register About do
  menu parent: 'Content',
       label: 'About',
       url: '/admin/about'

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.input :text
      f.file_field :image

      actions do
        action :submit
        cancel_link '/admin/about'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= About.first
    end
  end
end
