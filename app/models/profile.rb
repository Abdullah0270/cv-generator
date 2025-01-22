class Profile < ApplicationRecord
  has_one_attached :file

  validate :validate_file

  private

  def validate_file
    return unless file.attached?

    # Validate file content type
    acceptable_types = ['image/png', 'image/jpeg', 'application/pdf',
                        'application/msword',
                        'application/vnd.openxmlformats-officedocument.wordprocessingml.document']
    if file.content_type.blank? || !acceptable_types.include?(file.content_type)
      errors.add(:file, "must be a PNG, JPEG, PDF, DOC, or DOCX file")
    end

    # Validate file size (10 MB max)
    if file.attached? && file.blob.byte_size > 10.megabytes
      errors.add(:file, "is too large. Maximum size allowed is 10MB")
    end
  end
end
ssh -T git@github.com
