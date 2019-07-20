echo "distro type (rpm,amazon1,amazon2,debian)"
read type
echo "region"
read region
echo "source ami id"
read id
echo "instance type"
read inst
echo "ssh username"
read user
echo "name tag"
read tag
packer build -only=$type -var 'region='$region'' -var 'source_ami='$id'' -var 'instance_type='$inst'' -var 'ssh_username='$user'' -var 'name='$tag'' quickstart.json 
cd launch-template
terraform init --var "region=$region" --var "name=$tag"
terraform plan --var "region=$region" --var "name=$tag"
terraform apply --var "region=$region" --var "name=$tag"