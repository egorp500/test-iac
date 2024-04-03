## Requiremnets

Terraform 1.5.7

## Usage

1. Generate Digital Ocean (DO) and CircleCI Access Tokens
2. Paste your CircleCI access token to terminal
   ```bash
   read -s CIRCLE_TOKEN
   export CIRCLE_TOKEN
    ```
3. Paste your DO access token to terminal
    ```bash
   read -s DIGITALOCEAN_ACCESS_TOKEN
   export DIGITALOCEAN_ACCESS_TOKEN
    ```
4. Run the commands
    ```bash
   # Format the TF code
   terraform fmt
   
   # Initialize TF
   terraform init
   
   # Validate TF deployment
   terraform validate
   
   # Apply TF code:
   # "01-infra"
   terraform apply
   
   # "05-provision"
    terraform apply -var digitalocean_registry_access_token=$DIGITALOCEAN_ACCESS_TOKEN
    ```
5. Run CircleCI pipeline (to push image to DOCR created in "01-infra")
6. Run the commands
    ```bash
   # Apply TF code:
   # "07-do-provision"
   terraform apply