## Requiremnets

Terraform 1.5.7

## Usage

1. Generate Digital Ocean (DO) Access Token
2. Paste your DO access token to terminal
    ```bash
   read -s DIGITALOCEAN_ACCESS_TOKEN
   export DIGITALOCEAN_ACCESS_TOKEN
    ```
2. Run the commands
    ```bash
   # Format the TF code
   terraform fmt
   
   # Initialize TF
   terraform init
   
   # Validate TF deployment
   terraform validate
   
   # Apply TF code
   terraform apply
    ```