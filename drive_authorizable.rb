require 'google_authorizer'
require 'google/apis/drive_v3'

module DriveAuthorizable
  include GoogleAuthorizer

  SCOPE = Google::Apis::DriveV3::AUTH_DRIVE_METADATA_READONLY

  def authorize
    authorize_scope(SCOPE, 'google-ruby-drive')
  end

end