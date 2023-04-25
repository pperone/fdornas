ActiveAdmin.register Portfolio do
  menu parent: 'Content',
       label: 'Portfolio',
       url: '/admin/portfolio'

  actions :show, :edit, :update

  form do |f|
    inputs do
      # all the inputs

      actions do
        action :submit
        cancel_link '/admin/portfolio'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= Portfolio.first
    end
  end
end
