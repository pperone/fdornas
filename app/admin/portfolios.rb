ActiveAdmin.register Portfolio do
  menu parent: 'Content',
       label: 'Portfolio',
       url: '/admin/portfolio'

  permit_params portfolio_items_attributes: %i[id title description image]

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.has_many :portfolio_items, new_record: 'New portfolio item', remove_record: 'Remove portfolio item', allow_destroy: true do |o|
        o.input :title
        o.input :description
        o.file_field :image
      end

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
