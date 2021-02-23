describe file('/tmp/the_tmp_file') do
  it { should exist }
  its('content') { should match(%r{I got notified}) }
end
