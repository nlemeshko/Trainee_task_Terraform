# Trainee Task Terraform

[![N|Solid](https://mdsn.tk/favicon.png)](https://mdsn.tk)


## Task

**Goal:** The main goal of this task is to ensure the candidate can learn a new technology fast.<br />
**Duration:** 2 weeks<br />
**Description:** The task consists of two separate scenarios. In the First scenario you should create infrastructure described below (Pic.1) in one of the public cloud (AWS or Azure). You should use terraform with version at least 0.12.29. Also, you should describe required resources which necessary for creating this architecture such as VPC, Subnet and etc. in AWS. 

### Environment settings:

 -	OS: Windows Server 2019
 -	Traffic should be routed between two instances.
 -	In AWS(use Network LoadBalancer) and in Azure (use Azure LoadBalancer)
 
<p align="center">
  <img src="https://github.com/nlemeshko/Trainee_task_Terraform/blob/main/Picture1.png?raw=true" alt="Picture1"/>
</p>

<p align="center">
  <img src="https://github.com/nlemeshko/Trainee_task_Terraform/blob/main/Picture2.png?raw=true" alt="Picture2"/>
</p>


The Second scenario you should create **PowerShell scripts** that can deploy **IIS** website in VMs created in the previous scenario. Each script run should clean up **Website, Application Pool and site folder**. This PowerShell script should run on your **local** host and connect to VMs via **WinRM**. 




## Requirements

  - Terrafrom > 0.12


## Run


```sh
$ terrafrom init
$ terraform plan -out terrafrom.out
$ terrafrom apply
```

* **Do not forget:** Copy **provider.tf.dist** to **provider.tf** and add **access_key, secret_key**




### Nicky Lemeshko (c) 2021
