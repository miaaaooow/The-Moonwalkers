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

  process :resize_to_fit => [600, 800]

  version :thumb do
     process :resize_to_fit => [100, 100]
  end

  def extension_white_list
     %w(jpg jpeg gif png)
  end
end
