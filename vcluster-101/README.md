# virtual kubernetes cluster 101 Workshop Content


### Presentation Slides

[PPT](presentation/KCD_virtual_kubernetes_cluster.pptx) has the slides presented in vcluster-101 Workshop on 28th May 2022


### Pre-requisites

Following binaries should be installed to run the demo scenarios

1. [kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
2. [vcluster](https://www.vcluster.com/docs/getting-started/setup)
3. [jq](https://stedolan.github.io/jq/download/)
4. [yq](https://github.com/mikefarah/yq/#install)


### Kubernetes cluster setup

[Local Environment Setup](local_environment_setup/kind.ipynb) explains how to use `kind` to quickly spin up a multinode local cluster and install a [metallb loadbalancer](https://kind.sigs.k8s.io/docs/user/loadbalancer/) in it to expose services.


### Demos


> **_WARNING:_** All the demos were prepared in a linux environment (WSL2 Ubuntu 20.04.04). These demos may not work as-is on Windows/MacOS.

> **_NOTE:_** In the Demos, to explain scenarios and the order of execution of the commands Jupyter notebook is used. However, the commands can also be run directly on a terminal 

1. [Quick Start](demos/Demo1_Quick_Start/quick_start.ipynb) - Explains how to quickly spin up a vcluster and use it just like any other kubernetes cluster

2. [Exposing and Accessing Vcluster](demos/Demo2_Exposing_And_Accesing_Vcluster/) - Showcases how to expose vcluster in different ways and also explains how to access it
    * [Loadbalancer](demos/Demo2_Exposing_And_Accesing_Vcluster/loadbalancer/Using_LB.ipynb) 
    * [Nodeport](demos/Demo2_Exposing_And_Accesing_Vcluster/nodeport/Using_NodePort_Service.ipynb) 

3. [Monitoring vcluster](demos/Demo3_Monitoring_Vcluster/Monitoring_With_metrics_server.ipynb) - How can we monitor workloads running within the vcluster?

4. [Inception](demos/Demo4_Inception/Inception.ipynb) - Let's build a vcluster within a vcluster. And discuss how the same workload runs in the same namespace within both the vclusters without any conflict.

5. [Datastore with/without PV](demos/Demo5_DataStore_with_without_PV/) - Explores how to run vcluster 
    * [with a persistent data store](demos/Demo5_DataStore_with_without_PV/1.persistence_enabled/Persistence_enabled.ipynb) 
    * [without a persistent data store](demos/Demo5_DataStore_with_without_PV/2.persistence_disabled/Persistence_disabled.ipynb)

6. [Pausing And Resuming Vcluster](demos/Demo6_Pausing_And_Resuming/Pausing_And_Resuming_Vcluster.ipynb) - Let's see how to use the pause and resume feature of vcluster to save computing resources

7. [Rootless Mode](demos/Demo7_Rootless_Mode/Rootless_mode.ipynb) - How can we run vcluster components as a non-root user?