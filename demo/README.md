# Checklist for the live demo

These are personal notes for Artun for the demonstration in CamundaCon 2019.

* Start Zeebe Modeler and open the `customer-contact.bpmn` from this repository.
* Close unnecessary background apps and services, except for docker desktop ;)

0. Prepare two bash prompts, zoom in for presentation purposes and execute: `source prepare-bash.sh`
  - one in the fn-functions directory
  - one in the demo directory
1. Delete Fn and Camunda Docker volumes before the demo to ensure a fresh start: `clean-up-volumes.sh`
2. Start docker container: `docker-compose up` in the `fn-project` directory
3. Check out Operate: http://localhost:8081 (demo / demo)
4. Deploy the test process: `deploy.sh``
5. Fix Elastic Search: `fix-elastic-search.sh`

## Fn Project Demo

* Create a test app: `fn create app demo`
* Change to the directory `fn-project/fn-functions`
* Create a new function: `fn init --runtime go hello-go`
* Change to the function directory `hello-go`
* Deploy the new function: `fn deploy --app demo --local`
* Invoke the function: `fn invoke demo hello-go`

### Triggers
* Change back to the directory `fn-functions`
* Create a new function including a trigger: `fn init --runtime python --trigger http hello-py`
