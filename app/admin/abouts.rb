ActiveAdmin.register About do
  menu parent: 'Content',
       label: 'About',
       url: '/admin/about'

  permit_params :text, :image

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.input :text, as: :quill_editor, input_html: { data:
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
      f.input :image, as: :file

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
