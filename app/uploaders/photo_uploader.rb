class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    # This code works
    process convert: 'jpg'
    cloudinary_transformation transformation: {width: 500, height: 500, 
          crop: :fill, effect: "sepia",
          radius: 20, quality: 80}

    cloudinary_transformation overlay: {
      text: "An overlay", :font_family=>"Roboto",
      :font_size=>25, :font_weight=>"lighter",
      color: "#fff", gravity: "north", x: 50 #This line does nothing
    }
  end  
end
