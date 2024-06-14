0. The goal of phase 2b is to perform benchmarking/scalability tests of sample three-tier lakehouse solution.

1. In main.tf, change machine_type at:

```
module "dataproc" {
  depends_on   = [module.vpc]
  source       = "github.com/bdg-tbd/tbd-workshop-1.git?ref=v1.0.36/modules/dataproc"
  project_name = var.project_name
  region       = var.region
  subnet       = module.vpc.subnets[local.notebook_subnet_id].id
  machine_type = "e2-standard-2"
}
```

and subsititute "e2-standard-2" with "e2-standard-4".

2. If needed request to increase cpu quotas (e.g. to 30 CPUs): 
https://console.cloud.google.com/apis/api/compute.googleapis.com/quotas?project=tbd-2023z-9918

3. Using tbd-tpc-di notebook perform dbt run with different number of executors, i.e., 1, 2, and 5, by changing:
```
 "spark.executor.instances": "2"
```

in profiles.yml.

4. In the notebook, collect console output from dbt run, then parse it and retrieve total execution time and execution times of processing each model. Save the results from each number of executors. 

The results are available in files - [1 worker](/report/run_1_worker.txt), [2 workers](/report/run_2_worker.txt) and [5 worker](/report/run_5_worker.txt).

**ATTENTION** This data was acquired on lower base amount of data (1GB) due to fear of exceeding the credits on the machines.

5. Analyze the performance and scalability of execution times of each model. Visualize and discucss the final results.

[](/report/exec%20time%20total.png)
[](/report/per%20layer%20per%20worker.png)

As shown on the graphs above, silver layer requires most time to compute, mostly to the sheer size of computed tables.

The graph also shows the inverted dependency of time in relation to number of workers. However it shall be noted, the dependancy does not seem to be linear - the percentage gain while using 2 workers instead of 1 is significantly greater than the gain from having 5 workers instead of 2. This might be the result of efficient paralelization of the workload.

Below we provide a breakdown through the given models. **ATTENTION:** The Y scale is logaritmic.

[](/report/bronze.png)
[](/report/silver.png)
[](/report/gold.png)