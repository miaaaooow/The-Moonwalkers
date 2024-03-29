# -*- encoding : utf-8 -*-

class UserPictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "uploads/users/#{model.id}"
  end

  process :resize_to_fit => [400, 400]

  version :thumb do
    process :resize_to_fit => [50, 50]
  end
  
  version :mw_thumb do
    process :resize_to_fit => [150, 150]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
  
  def default_url
    "/images/fallback/" + [version_name, "no-avatar.jpeg"].compact.join('_')
  end
end
