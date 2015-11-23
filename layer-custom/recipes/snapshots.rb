template "/usr/local/bin/fetching-snapshot.sh" do
  source "elasticsearch.fetching-snapshot.sh.erb"
  mode "0550"
  owner "root"
  group "root"
end

cron "cloudwatch-custom" do
  hour "00"
  minute "00"
  weekday "*"
  command "/usr/local/bin/fetching-snapshot.sh"
end
