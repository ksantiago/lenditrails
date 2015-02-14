module Flickr
  module Api
    class Abstract

      ##
      # Does processing of parameters passed to API requests, to enable nicer
      # syntax.
      #
      # @private
      #
      class ParamsProcessor

        attr_reader :params

        def initialize(params)
          @params = params
        end

        def process_for(flickr_method)
          add_sizes! if add_sizes?(flickr_method)

          @params
        end

        private

        ##
        # @example
        #   processor = ParamsProcessor.new({sizes: true})
        #   processor.add_sizes!
        #   processor.params #=> {extras: "url_sq,url_t,url_q,url_s,url_n,url_m,url_z,url_c,url_l,url_h,url_k,url_o"}
        #
        #   processor = ParamsProcessor.new({sizes: ["Square 75", "Thumbnail"]})
        #   processor.add_sizes!
        #   processor.params #=> {extras: "url_sq,url_t"}
        #
        def add_sizes!
          if [true, :all].include? @params[:sizes]
            @params[:sizes] = Flickr::Object::Photo::SIZES
          end

          sizes = Array(@params[:sizes])
            .map { |name| Flickr::Object::Photo::Size.new(name) }
            .map { |size| "url_#{size.abbreviation}" }
          existing_extras = String(@params[:extras]).split(",")

          @params[:extras] = (existing_extras + sizes).join(",")
        end

        def add_sizes?(flickr_method)
          [ "favorites.getPublicList",
            "favorites.getList",
            "galleries.getPhotos",
            "groups.pools.getPhotos",
            "interestingness.getList",
            "people.getPhotos",
            "people.getPhotosOf",
            "panda.getPhotos",
            "people.getPublicPhotos",
            "photos.comments.getRecentForContacts",
            "photos.geo.getLocation",
            "photos.geo.photosForLocation",
            "photos.getContactsPhotos",
            "photos.getContactsPublicPhotos",
            "photos.getNotInSet",
            "photos.getRecent",
            "photos.getWithGeoData",
            "photos.getUntagged",
            "photos.getWithoutGeoData",
            "photos.search",
            "photos.recentlyUpdated",
            "photosets.getPhotos" ].include?(flickr_method)
        end

      end

    end
  end
end
