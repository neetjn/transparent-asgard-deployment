# transparent-asgard-deployment
> *Dockerized machine configuration for my personal deployment environment for TL related projects.*

The goal of this project is to simplify staging environments for deploying asgard lite microservices. As I don't have the spending power to afford aws instances explicitly for development/testing, this project will help terraform my virtual private servers for handling deployments.

For use without docker, simply execute `setup.sh` on a RH or Debian based machine. This will install ansible if not already available, as well as other necessary tools for successful deployments on your machine. Otherwise, simply build the docker image using:

```sh
docker build . -t tl-asgl-deployment
```

and begin terraforming your environment by using:

```sh
docker run tl-asgl-deployment
```

The target machine can be specified in `ansible/group_vars/all.yml`, otherwise the ansible script will point to localhost.

---

Copyright (c) 2018 John Nolette Licensed under the MIT License.
