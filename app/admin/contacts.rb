ActiveAdmin.register Contact do
  menu parent: 'Content',
       label: 'Contact',
       url: '/admin/contact'

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.file_field :image

      f.has_many :contact_items, new_record: 'New contact item', remove_record: 'Remove contact item', allow_destroy: true do |o|
        o.input :title
        o.input :info
      end

      actions do
        action :submit
        cancel_link '/admin/contact'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= Contact.first
    end
  end
end
