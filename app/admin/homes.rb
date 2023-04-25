ActiveAdmin.register Home do
  menu parent: 'Content',
       label: 'Home',
       url: '/admin/home'

  permit_params :cover

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.input :cover, as: :file

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
