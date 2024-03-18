#!/bin/bash

# Create ARM Group
az group create -n bigIP -l polandcentral

# Deploy ARM Template, right now cannot specify parameter file and parameters inline via Azure CLI

az deployment group create --verbose --no-wait  --resource-group bigIP \
  --name bigIP --template-file azuredeploy.json --parameters=@azuredeploy.parameters.json \
  --parameters adminPasswordOrKey='BardzoTajne#1'



#  --parameters "{\"adminUsername\":{\"value\":\"$adminUsername\"},\"authenticationType\":{\"value\":\"$authenticationType\"},\"adminPasswordOrKey\":{\"value\":\"$adminPasswordOrKey\"},\"dnsLabel\":{\"value\":\"$dnsLabel\"},\"instanceType\":{\"value\":\"$instanceType\"},\"imageName\":{\"value\":\"$imageName\"},\"bigIqAddress\":{\"value\":\"$bigIqAddress\"},\"bigIqUsername\":{\"value\":\"$bigIqUsername\"},\"bigIqPassword\":{\"value\":\"$bigIqPassword\"},\"bigIqLicensePoolName\":{\"value\":\"$bigIqLicensePoolName\"},\"bigIqLicenseSkuKeyword1\":{\"value\":\"$bigIqLicenseSkuKeyword1\"},\"bigIqLicenseUnitOfMeasure\":{\"value\":\"$bigIqLicenseUnitOfMeasure\"},\"bigIpVersion\":{\"value\":\"$bigIpVersion\"},\"bigIpModules\":{\"value\":\"$bigIpModules\"},\"vnetName\":{\"value\":\"$vnetName\"},\"vnetResourceGroupName\":{\"value\":\"$vnetResourceGroupName\"},\"mgmtSubnetName\":{\"value\":\"$mgmtSubnetName\"},\"declarationUrl\":{\"value\":\"$declarationUrl\"},\"ntpServer\":{\"value\":\"$ntpServer\"},\"timeZone\":{\"value\":\"$timeZone\"},\"customImageUrn\":{\"value\":\"$customImageUrn\"},\"customImage\":{\"value\":\"$customImage\"},\"restrictedSrcAddress\":{\"value\":\"$restrictedSrcAddress\"},\"tagValues\":{\"value\":$tagValues},\"allowUsageAnalytics\":{\"value\":\"$allowUsageAnalytics\"},\"allowPhoneHome\":{\"value\":\"$allowPhoneHome\"},\"vmScaleSetMinCount\":{\"value\":$vmScaleSetMinCount},\"vmScaleSetMaxCount\":{\"value\":$vmScaleSetMaxCount},\"appInsights\":{\"value\":\"$appInsights\"},\"scaleOutCpuThreshold\":{\"value\":$scaleOutCpuThreshold},\"scaleInCpuThreshold\":{\"value\":$scaleInCpuThreshold},\"scaleOutThroughputThreshold\":{\"value\":$scaleOutThroughputThreshold},\"scaleInThroughputThreshold\":{\"value\":$scaleInThroughputThreshold},\"scaleOutTimeWindow\":{\"value\":$scaleOutTimeWindow},\"scaleInTimeWindow\":{\"value\":$scaleInTimeWindow},\"notificationEmail\":{\"value\":\"$notificationEmail\"},\"useAvailabilityZones\":{\"value\":\"$useAvailabilityZones\"},\"autoscaleTimeout\":{\"value\":$autoscaleTimeout},\"provisionPublicIP\":{\"value\":\"$provisionPublicIP\"},\"applicationProtocols\":{\"value\":\"$applicationProtocols\"},\"applicationAddress\":{\"value\":\"$applicationAddress\"},\"applicationPort\":{\"value\":\"$applicationPort\"},\"applicationSecurePort\":{\"value\":\"$applicationSecurePort\"},\"sslCert\":{\"value\":\"$sslCert\"},\"sslPswd\":{\"value\":\"$sslPswd\"},\"applicationType\":{\"value\":\"$applicationType\"},\"blockingLevel\":{\"value\":\"$blockingLevel\"},\"customPolicy\":{\"value\":\"$customPolicy\"},\"dnsMemberIpType\":{\"value\":\"$dnsMemberIpType\"},\"dnsMemberPort\":{\"value\":\"$dnsMemberPort\"},\"dnsProviderHost\":{\"value\":\"$dnsProviderHost\"},\"dnsProviderPort\":{\"value\":\"$dnsProviderPort\"},\"dnsProviderUser\":{\"value\":\"$dnsProviderUser\"},\"dnsProviderPassword\":{\"value\":\"$dnsProviderPassword\"},\"dnsProviderPool\":{\"value\":\"$dnsProviderPool\"},\"dnsProviderDataCenter\":{\"value\":\"$dnsProviderDataCenter\"},\"tenantId\":{\"value\":\"$tenantId\"},\"clientId\":{\"value\":\"$clientId\"},\"servicePrincipalSecret\":{\"value\":\"$servicePrincipalSecret\"}}"