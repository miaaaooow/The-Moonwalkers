# -*- encoding : utf-8 -*-

class AlbumPhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/gallery/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  process :resize_to_fit => [600, 600]

  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  version :middle_finger do 
    process :resize_to_fit => [300, 300]
  end

  def extension_white_list
     %w(jpg jpeg gif png)
  end
  
    def default_url
    "/images/fallback/" + [version_name, "no-photo.jpeg"].compact.join('_')
  end
end
