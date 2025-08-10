ActiveAdmin.register Portfolio do
  menu parent: 'Content',
       label: 'Portfolio',
       url: '/admin/portfolio'

  permit_params portfolio_items_attributes: [:id, :title, :description, :image]

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.has_many :portfolio_items, new_record: 'New portfolio item', remove_record: 'Remove portfolio item', allow_destroy: true do |o|
        o.input :image, as: :file
        o.input :order
        o.input :title
        o.input :description, as: :quill_editor, input_html: { data:
          { options:
            { modules:
              { toolbar:
                [%w[bold italic underline strike],
                 %w[blockquote code-block],
                 [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                 [{ 'align': [] }],
                 ['link'],
                 [{ 'size': ['small', false, 'large', 'huge'] }],
                 [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
                 [{ 'indent': '-1' }, { 'indent': '+1' }],
                 [{ 'direction': 'rtl' }],
                 [{ 'color': [] }, { 'background': [] }],
                 [{ 'font': [] }],
                 ['clean'],
                 ['image'],
                 ['video']] },
              theme: 'snow' } } }
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
