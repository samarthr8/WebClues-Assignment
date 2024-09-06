# WebClues Assignment

## Task 1: Simple Node.js Application

1. The code for the simple Node.js application resides in the `Result-NodeJS-App` directory.
2. It contains a Dockerfile to containerize the application, exposing port 3000 where the application can be accessed.
3. The following commands can be used to build, push (optional), and run the Docker image:

    ```bash
    # To build the Docker image
    docker build -t samarthr8/webclues-assignment:result-nodejs .

    # To log in to Docker Hub
    docker login

    # To push the Docker image to Docker Hub
    docker push samarthr8/webclues-assignment:result-nodejs

    # To run the Docker container
    docker run -it -d -p 3000:3000 samarthr8/webclues-assignment:result-nodejs
    ```

### Task 1 Deliverable:
- [Dockerfile](Result-NodeJS-App/Dockerfile)

---

## Task 2: Kubernetes Deployment

1. The deliverables for this task are available in the `K8s-manifests` directory.
2. It contains `deployment.yaml` and `service.yaml` files to create a deployment for Nginx with 3 replicas, which can be accessed on the web browser using a service of type `LoadBalancer`.
3. The `deployment.yaml` also includes probes (liveness and readiness) and resource configurations (limits and requests).
4. Use the following commands to create the deployment and service:

    ```bash
    kubectl apply -f deployment.yaml
    kubectl apply -f service.yaml
    ```

5. The Nginx web page can be accessed using the LoadBalancer service URL.

### Task 2 Deliverables:
- [Kubernetes Manifests](K8s-manifests/)

---

## Task 3: Terraform and Ansible Setup

### Terraform

1. The deliverables of this task are available in the `Task-3` directory.
2. The directory contains two subdirectories: `Ansible-Nginx` and `Terraform`, hosting the Ansible and Terraform files, respectively.
3. Navigate to the Terraform directory using the command `cd Terraform` and create an S3 bucket and DynamoDB table, then update the names in `provider.tf`.
4. Run the following commands to initialize Terraform, preview the resource creation plan, and apply the configuration:

    ```bash
    terraform init
    terraform plan
    terraform apply --auto-approve
    ```

5. Note the output details as they will be used to update the Ansible configurations.

### Ansible

1. Go to the `Ansible-Nginx` directory using `cd Ansible-Nginx`.
2. Update the IP address in the `inventory` file.
3. Update the Nginx configuration file (`result`) with your registered domain name and the IP of the EC2 instance where the Node.js application container is running.
4. Copy the EC2 key pair file onto the server for authentication.
5. Run the following Ansible command to install Nginx on the server and update the Nginx configuration to serve the container:

    ```bash
    ansible-playbook playbook.yaml -i inventory
    ```
6. Map the domain name with the IP of the EC2 instance which is serving files on Nginx.

### Task 3 Deliverables:
- [Terraform and Ansible Files](Task-3/)

