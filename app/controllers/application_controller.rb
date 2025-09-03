class ApplicationController < ActionController::Base
  def home
    @home = Home.first
  end

  def about
    @about = About.first
  end

  def gallery
    @gallery = Gallery.first
  end

  def video
    @video = Video.first
  end

  def gallery_item
    @item = GalleryItem.find(params[:id])
  end

  def portfolio
    @portfolio = Portfolio.first
  end

  def contact
    @contact = Contact.first
    @contact_form = ContactForm.new
  end

  def create_contact_form
    @contact_form = ContactForm.new(params[:contact_form])
    @contact_form.request = request

    if @contact_form.deliver
      flash[:success] = 'Mensagem enviada. Obrigado!'
    else
      flash[:error] = 'Mensagem não pôde ser enviada'
    end

    redirect_to contact_path
  end
end
