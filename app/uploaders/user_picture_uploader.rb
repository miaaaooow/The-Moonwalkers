# encoding: utf-8

class UserPictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/users/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  process :resize_to_fit => [200, 300]

  version :thumb do
    process :scale => [50, 50]
  end
  
  version :mw_thumb do
    process :resize_to_fit => [150, 150]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
