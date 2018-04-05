namespace :puma do
  %w[start stop restart status].each do |command|
    desc "#{command} puma"
    task command do
      on roles(fetch(:puma_role), [:app]) do
        sudo "systemctl #{command} puma.service"
      end
    end
  end
end
