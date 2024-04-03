### Prerequisites

A Data Product should already exist in order to attach new components to it.

### Component Metadata

This section includes the basic information that any Component of Witboost must have:

- Name: (Required) Name used for display purposes on your Data Product.
- Fully Qualified Name: (Optional) Human-Readable name that describes better the Storage Area.
- Description: (Required) A short description to help others understand what this Storage Area is for.
- Domain: (Required) The Domain of the Data Product this Storage Area belongs to. Be sure to choose it correctly as is a fundamental part of the Storage Area and cannot be changed afterwards.
- Data Product: (Required) The Data Product this Storage Area belongs to, be sure to choose the right one.
- Identifier: (Required) Unique ID for this new entity inside the domain. Don't worry to fill this field, it will be automatically filled for you.
- Development Group: (Required) Development group of this Data Product. Don't worry to fill this field, it will be automatically filled for you.
- Depends On: (Optional) If you want your Storage Area to depend on other components from the Data Product, you can choose this option.

*Example:*

| Field Name              | Example Value                                                                                          |
|:------------------------|:-------------------------------------------------------------------------------------------------------|
| **Name**                | Vaccinations DP                                                                                        |
| **Description**         | Creates the vaccinations schema for this Data Product                                                  |
| **Domain**              | domain:healthcare                                                                                      |
| **Data Product**        | system:healthcare.vaccinationsdp.0                                                                     |
| ***Identifier***        | Will look something like this: *healthcare.vaccinationsdp.0.adlsgen2-vaccinations-storage*             |
| ***Development Group*** | Might look something like this: *group:datameshplatform* Depends on the Data Product development group |

### ADLS Gen2 Storage Area Deployment Information

- Subscription: (Required) The Azure subscription to assign the Resource Group to. IT SHOULD ALREADY EXIST.
- Resource Group: (Required) The Resource Group to assign the Storage Account to. IT SHOULD ALREADY EXIST.
- Storage Account: (Required) A name for the storage account where to create the ADLSgen2 container. If not existing, it will be created. The name must be unique across all existing storage account names in Azure.
- Container: (Required) The ADLS gen2 container to create into the storage account.
- Region: (Required) Choose the Azure region that's right for you and your customers. Not all storage account configurations are available in all regions.
- Performance: (Required) Determine whether you want to have premium performance for block blobs, file shares, or page blobs in your storage account.
- Redundancy: (Required) The data in your Azure storage account is always replicated to ensure durability and high availability. Choose a replication strategy that matches your durability requirements.
- Access Tier: (Required) The account access tier is the default tier that is inferred by any blob without an explicitly set tier.
- Hierarchical Namespace: (Required) Hierarchical namespace, complemented by Data Lake Storage Gen2 endpoint, enables file and directory semantics, accelerates big data analytics workloads, and enables access control lists (ACLs).

*Example:*

| Field Name                 | Example Value     |
|:---------------------------|:------------------|
| **Subscription**           | my-subscription   |
| **Resource Group**         | my-resource-group |
| **Storage Account**        | mystorageaccount  |
| **Container**              | my-container      |
| **Region**                 | West Europe       |
| **Performance**            | Standard          |
| **Redundancy**             | LRS               |
| **Access Tier**            | Hot               |
| **Hierarchical Namespace** | true              |