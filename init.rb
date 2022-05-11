require File.expand_path 'lib/time_logger_hooks', __dir__
require File.expand_path 'lib/time_logger_application_helper_patch', __dir__

Redmine::Plugin.register :time_logger do
  name 'Time Logger'
  author 'Jérémie Delaitre, Jim McAleer, Dmitry Makurin'
  description 'Time logger is a Redmine plugin to ease time tracking when working on an issue'
  url 'https://github.com/red-soft-ru/time_logger'
  version '2022.05.1'

  requires_redmine version_or_higher: '4.0.0'

  settings default: { refresh_rate: '60', status_transitions: {}, redirect_to_new_time_entry: 'off' }, partial: 'settings/time_logger'

  permission :view_others_time_loggers, time_loggers: :index
  permission :delete_others_time_loggers, time_loggers: :delete

  menu :account_menu, :time_logger_menu, 'javascript:void(0)',
       caption: '',
       html: { id: 'time-logger-menu' },
       first: true,
       param: :project_id,
       if: proc { User.current.logged? }
end
