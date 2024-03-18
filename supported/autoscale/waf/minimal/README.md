## commands:

### create Service Principal with v1 signle NIC access

```bash
# Check the subscription ID
az account list --query "[].{name:name, subscriptionId:id}"

# create
az ad sp create-for-rbac -n "single-nic" --role Contributor --scopes /subscriptions/{SubscriptionId}
# or

az ad sp create-for-rbac -n "single-nic" --role Contributor --scopes /subscriptions/d80a2140-b340-4ba3-98f2-4db9adb2c42b
```

### to display VMSS details

machines:
```bash
az vmss list-instances  -g bigIP -n bigtest-vmss
```


machines IPs:
```bash
az vmss nic list --resource-group bigIP --vmss-name bigtest-vmss --query "[].ipConfigurations[].privateIPAddress"
```

to verify:

```bash
az deployment group validate --resource-group bigIP --name bigIP --template-file bigIP.json
```

to create:

```bash
az group create -n bigIP -l polandcentral
az deployment group create --resource-group bigIP --name bigIP --template-file bigIP.json
```