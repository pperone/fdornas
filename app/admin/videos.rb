ActiveAdmin.register Video do
  menu parent: 'Content',
       label: 'Video',
       url: '/admin/video'

  permit_params :video_id

  actions :show, :edit, :update

  form do |f|
    inputs do
      f.input :video_id, label: 'YouTube ID'

      actions do
        action :submit
        cancel_link '/admin/video'
      end
    end
  end

  controller do
    defaults singleton: true

    def resource
      @resource ||= Video.first
    end
  end
end
