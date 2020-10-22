# TODO make it resources
Rails.application.routes.draw do
  match 'time_loggers/stop', to: 'time_loggers#stop', via: %i[get post], as: 'time_logger_stop'
  match 'time_loggers/start', to: 'time_loggers#start', via: %i[get post], as: 'time_logger_start'
  match 'time_loggers/suspend', to: 'time_loggers#suspend', via: %i[get post], as: 'time_logger_suspend'
  match 'time_loggers/resume', to: 'time_loggers#resume', via: %i[get post], as: 'time_logger_resume'
  match 'time_loggers/delete', to: 'time_loggers#delete', via: %i[get post]
  match 'time_loggers', to: 'time_loggers#index', via: %i[get post], as: 'time_logger_index'

  match 'time_loggers/render_menu', to: 'time_loggers#render_menu', via: %i[get post]

  match 'time_loggers/add_status_transition', to: 'time_loggers#add_status_transition', via: %i[get post]
  match 'time_loggers/delete_status_transition', to: 'time_loggers#delete_status_transition', via: %i[get post]
  match 'time_loggers/show_report', to: 'time_loggers#show_report', via: %i[get post]
end
