Comatose.configure do |config|
   # Includes AuthenticationSystem in the ComatoseController
   #config.includes << :authenticated_system

   # admin
   #config.admin_title = "My Content"
   #config.admin_sub_title = "Content for the rest of us..."

   # Includes AuthenticationSystem in the ComatoseAdminController
   config.admin_includes << :authenticated_system

   # Calls :login_required as a before_filter
   config.admin_authorization = :login_required
   # Returns the author name (login, in this case) for the current user
   config.admin_get_author do
     current_user.login
   end

   # See the getting started guide at http://comatose.rubyforge.org for more...
 end
