# Checklist for the live demo

These are personal notes for Artun for the demonstration in CamundaCon 2019.

* Start Camunda Modeler and open the `customer-contact.bpmn` from this repository.

0. Prepare the bash prompt: `source prepare-bash.sh`
1. Delete Fn and Camunda Docker volumes before the demo to ensure a fresh start: `clean-up-volumes.sh`
2. Start docker container: `docker-compose up` in the `fn-project` directory
3. Check out Operate: http://localhost:8081 (demo / demo)
4. Deploy the test process: `deploy.sh``


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
