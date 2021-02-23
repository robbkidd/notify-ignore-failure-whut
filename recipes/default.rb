execute "a thing that might fail" do
  command node['will-it-blend']['should-i-succeed?'] ? "echo 'Hi!'" : "exit 1"
  ignore_failure true
end

file "/tmp/the_tmp_file" do
  content "I got notified"
  action :nothing
  subscribes :create, "execute[a thing that might fail]"
end
