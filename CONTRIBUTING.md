1. Go to the CV gitlab repo and get the secrets CI var
2. Create a file called secrets.auto.tfvars and put the contents into it. 
3. do the following:

export PROJECT_ID="43851271"
export TF_USERNAME="<gitlab-username>"
export TF_PASSWORD="<gitlab-personal-access-token>"
export TF_ADDRESS="https://gitlab.com/api/v4/projects/${PROJECT_ID}/terraform/state/main"

terraform init \
  -backend-config=address=${TF_ADDRESS} \
  -backend-config=lock_address=${TF_ADDRESS}/lock \
  -backend-config=unlock_address=${TF_ADDRESS}/lock \
  -backend-config=username=${TF_USERNAME} \
  -backend-config=password=${TF_PASSWORD} \
  -backend-config=lock_method=POST \
  -backend-config=unlock_method=DELETE \
  -backend-config=retry_wait_min=5

terraform apply

4. install node (https://github.com/nodesource/distributions/blob/master/README.md#using-ubuntu-1)

5. npx create-next-app@latest nextjs-blog --use-npm --example "https://github.com/vercel/next-learn/tree/master/basics/learn-starter" - this is the deafult example next.js app