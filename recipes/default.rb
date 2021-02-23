execute "a thing that might fail" do
  command node['will-it-blend']['should-i-succeed?'] ? "echo 'Hi!'" : "exit 1"
  ignore_failure true
  notifies :create, "file[/tmp/the_tmp_file]"
end

file "/tmp/the_tmp_file" do
  content "I got notified"
  action :nothing
end
