class BoiteABonshommesController < ApplicationController
  skip_before_filter :authorize
  def bonjour_madame
    bonjour_bonhomme('http://www.bonjourmadame.fr/', '[@class="photo"]/img', "Bonjour Madame !", "boite_a_dame")
    respond_to do

    end
  end

  def bonjour_monsieur
    bonjour_bonhomme('http://www.bonjourmonsieur.fr/', '[@class="boxgrid captionfull"]/img', "Bonjour Monsieur !", "boite_a_dame")
  end

  def bonjour_bonhomme(site_address, img_node_to_find, boite_title, class_name)

    begin
      html_doc = Nokogiri::HTML(open(site_address))
      html_doc.search(img_node_to_find).each do |link|
       keys = link.keys
       values = link.values
        @src = link["src"]
        @alt = link["alt"]
      end
      @boite_title = boite_title
      @class_name = class_name
      respond_to do |format|
        format.html { redirect_to(bonjour_bonhomme_url) }
      end
    rescue Exception => e
      flash[:notice] = e.message
    end


  end

end
