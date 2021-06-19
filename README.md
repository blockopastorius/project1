# project1
## Automated ELK stack deployment

The files in this repository were utilized to configure the virtual environment described below.

These files have been tested, and used to produce a live ELK deployment on Microsoft's Azure platform.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


## Description of the topology

The purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D**n Vulnerable Web Application

Load Balancing and server redundancy ensures the stability of the application, DDoS attacks are a considerable threat in today's
cyber landscape. Load Balancing mitigates this risk. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to hardware and system logs.


The configuration details of each machine may be found below.

| Name                 | Function                      | IP Address | Operating System |   |
|----------------------|-------------------------------|------------|------------------|---|
| Jump-Box-Provisioner | Gateway                       | 10.0.0.4   | Linux            |   |
| Web-1                | Redundant web hosting (DVWA)  | 10.0.0.9   | Linux            |   |
| Web-2                | Redundant web hosting (DVWA)  | 10.0.0.10  | Linux            |   |
| Web-3                | Redundant web hosting  (DVWA) | 10.0.0.11  | Linux            |   |
| ELK-stack            | hosting for elk stack         | 10.1.0.4   | Linux            |   |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the "Jump Box Provisioner" machine can accept connections from the Internet. Access to this machine is only allowed from the following IP address:
- 71.195.58.217

Machines within the network can only be accessed via the load balancer, which has a public IP; 52.255.200.151.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed I.P. addresses |
|----------------------|---------------------|------------------------|
| Jump Box Provisioner | Yes                 | 71.195.58.217          |
| Load Balancer A      | Yes                 | 71.195.58.217          |
| Web-1                | No                  | 10.0.0.4               |
| Web-2                | No                  | 10.0.0.4               |
| Web-3                | No                  | 10.0.0.4               |
| ELK-stack            | Yes                 | 71.195.58.217          |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, This ensures lack of user error, as well as consistency with any future deployments.

The playbook implements the following tasks:
- Installs Docker.io
- Installs pip3
- Downloads and launches a docker elk container



### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web 1
- Web 2
- Web 3

We have installed the following Beats on these machines:
- Filebeat

These Beats allow us to collect the following information from each machine:
- all Logs from the existing machines from the /var/log directory.
### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the .yml file to /etc/ansible.
- Update the .yml file to include your given host machine IP's. Ensure you input the ip's under the [elk] heading
- Run the playbook, there will be error messages describing any issues with the running of the file, we find that frequently the errors
lie in the "hosts" and "config" files. To verify installation, navigate to http://<your vm's ip address>:5601/apps/kibana. If the page loads, you've succeeded.


