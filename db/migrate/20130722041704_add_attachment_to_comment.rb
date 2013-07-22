class AddAttachmentToComment < ActiveRecord::Migration
  def change
    add_column :comments, :attachment_file_name, :string                                                                                                                                          
    add_column :comments, :attachment_content_type, :string                                                                                                                                       
    add_column :comments, :attachment_file_size, :integer                                                                                                                                         
    add_column :comments, :attachment_updated_at, :datetime                                                                                                                                       
  end
end
