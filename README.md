# money-to-prisoners
Money to Prisoners public application

## Getting started

### Requirements

- [Vagrant](https://www.vagrantup.com/) v1.5+
- [VirtualBox](https://www.virtualbox.org) v4+ (or [VMWare
  Fusion](http://www.vmware.com/products/fusion/) and [the Vagrant
  plugin](https://www.vagrantup.com/vmware))

### Environment setup

1. Run `vagrant up`. At the end of the output, there will be a notice
   detailing the application port and docker port (assuming you have
   [Docker](https://www.docker.com/) installed)
2. Work normally, editing files from the host machine; Rails in the VM
   will pick up changes as you make them.

## Running tests

### Browser tests

Browser tests run via Nightwatch JS which requires [NodeJS](https://nodejs.org).

Before running the tests, install the NodeJS dependancies using `npm install`.

#### Run the tests

```bash
make test
```
