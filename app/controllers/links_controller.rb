class LinksController < ApplicationController

    def index
        @test = "test"
        
    end

    def new
        @link = Link.new()        
        @link.url = params[:url]
        @link.url.strip!
        @link.url = @link.url.downcase.gsub(/(https?:\/\/)|(www\.)/, "")
        @link.url.slice!(-1) if @link.url[-1] == "/"
        @link.url = "!http://#{@link.url}"    
        @link.save
        @link.slug = @link.id.to_s(16)
        @link.save        
    end

    def show
        @link = Link.where("slug = ?",params[:slug]).first
        redirect_to(@link.url)
    end
    
    def top
    end


end
