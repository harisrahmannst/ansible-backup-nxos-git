# Image Dasar Menggunakan centos
FROM centos:7

# install dependencie yang dibutuhkan
RUN yum update -y && yum install epel-release -y && yum install ansible pyyaml openssh -y && yum install git -y && yum clean all

# install galaxy ansible untuk cisco nxos
RUN ansible-galaxy collection install cisco.nxos
