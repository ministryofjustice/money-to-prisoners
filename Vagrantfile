# -*- mode: ruby -*-
# vi: set ft=ruby :

DOCKER_IMAGE_TAG='money-to-prisoners'
DOCKER_PORT=2376
UNICORN_PORT=3000
VAGRANTFILE_API_VERSION = "2"

DOCKER_ENABLED_BOX="puppetlabs/ubuntu-14.04-64-nocm"

$docker_setup=<<CONF
cat > /etc/default/docker << 'EOF'
DOCKER_OPTS="-H 0.0.0.0:#{DOCKER_PORT} -H unix:///var/run/docker.sock"
EOF
service docker restart
CONF

unless Vagrant.has_plugin?("vagrant-cachier")
  puts "WARNING: vagrant-cachier plugin is not installed! It really speeds this up..."
  puts "         Install using 'vagrant plugin install vagrant-cachier'"
end

unless Vagrant.has_plugin?("vagrant-persistent-storage")
  puts "WARNING: vagrant-persistent-storage not installed! It really speeds up docker image mgmt"
  puts "         Install using 'vagrant plugin install vagrant-persistent-storage'"
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = DOCKER_ENABLED_BOX
  config.vm.hostname = "#{DOCKER_IMAGE_TAG}-dockerhost"
  config.vm.network "forwarded_port", guest: DOCKER_PORT, host: DOCKER_PORT
  config.vm.network "forwarded_port", guest: UNICORN_PORT, host: UNICORN_PORT

  # Set up SSH agent forwarding.
  config.ssh.forward_agent = true

  if Vagrant.has_plugin?("vagrant-persistent-storage")
    config.persistent_storage.enabled = true
    config.persistent_storage.location = ".vagrant/docker_disk.vdi"
    config.persistent_storage.size = 20000
    config.persistent_storage.mountname = 'docker'
    config.persistent_storage.filesystem = 'ext4'
    config.persistent_storage.mountpoint = '/var/lib/docker'
    config.persistent_storage.use_lvm = false
  end

  config.vm.provision "docker"
  config.vm.provision "shell", inline: $docker_setup

  # build image and start the application
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t #{DOCKER_IMAGE_TAG}"
    d.run "#{DOCKER_IMAGE_TAG}",
      args: "-v /vagrant:/usr/src/app -p #{UNICORN_PORT}:#{UNICORN_PORT}",
      cmd: "bundle exec rails server"
  end
  # print out help
  config.vm.provision "shell", inline: <<-EOF
    echo "---------------------------------------"
    echo "export DOCKER_HOST=tcp://localhost:#{DOCKER_PORT}"
  EOF

end
