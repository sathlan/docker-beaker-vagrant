HOSTS:
  centos-puppet-%MODULE%:
    hostname: puppet-%MODULE%.example.net 
    roles:
      - master
    platform: el-7-x86_64
    box: centos/7
    box_url:  http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7.LibVirt.box
    hypervisor: vagrant_libvirt
    vagrant_memsize: 4096
    vagrant_cpus: 2
    synced_folder: disabled
CONFIG:
  type: foss
  set_env: false
  libvirt:
    uri: qemu+ssh://%USER%@%HOST%/system
    management_network_name: my_vagrant
    management_network_address: 192.168.225.0/24
