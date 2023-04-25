ActiveAdmin.register Home do
  menu parent: 'Content',
       label: 'Home',
       url: '/admin/home'

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.file_field :cover

      actions do
        action :submit
        cancel_link '/admin/home'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= Home.first
    end
  end
end