object false

child @slides => :slides do
  attributes :id, :title, :presentation, :attachment_file_name, :position, :url
  node(:image_url_original) { |s| s.attachment.url }
  node(:image_url_mini) { |s| s.attachment.url(:mini) }
  node(:image_url_small) { |s| s.attachment.url(:small) }
  node(:image_url_medium) { |s| s.attachment.url(:medium) }
  node(:image_url_large) { |s| s.attachment.url(:large) }
  node(:image_url_default) { |s| s.attachment.url(:default) }
end
