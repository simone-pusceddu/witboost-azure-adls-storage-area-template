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

_Example:_

| Field Name              | Example Value                                                                                          |
|:------------------------|:-------------------------------------------------------------------------------------------------------|
| **Name**                | Vaccinations DP                                                                                        |
| **Description**         | Creates the vaccinations schema for this Data Product                                                  |
| **Domain**              | domain:healthcare                                                                                      |
| **Data Product**        | system:healthcare.vaccinationsdp.0                                                                     |
| **_Identifier_**        | Will look something like this: _healthcare.vaccinationsdp.0.adlsgen2-vaccinations-storage_             |
| **_Development Group_** | Might look something like this: _group:datameshplatform_ Depends on the Data Product development group |

### ADLS Gen2 Storage Area Deployment Information

- Resource Group: (Required) The Resource Group to assign the Storage Account to. IT SHOULD ALREADY EXIST.
- Storage Account: (Required) A name for the storage account where to create the ADLSgen2 container. If not existing, it will be created. The name must be unique across all existing storage account names in Azure.
- Containers: (Required) The ADLS gen2 container to create into the storage account.
- Performance: (Required) Determine whether you want to have premium performance for block blobs, file shares, or page blobs in your storage account.
- Redundancy: (Required) The data in your Azure storage account is always replicated to ensure durability and high availability. Choose a replication strategy that matches your durability requirements.
- Access Tier: (Required) The account access tier is the default tier that is inferred by any blob without an explicitly set tier.
- Enable Infrastructure Encryption: (Optional) By default, Azure encrypts storage account data at rest. Infrastructure encryption adds a second layer of encryption to your storage account's data.
- Allow Nested Items: (Optional) Allow or disallow nested items within this Account to opt into being public. Defaults to true.

_Example:_

| Field Name                           | Example Value     |
|:-------------------------------------|:------------------|
| **Resource Group**                   | my-resource-group |
| **Storage Account**                  | mystorageaccount  |
| **Containers**                       | my-container      |
| **Performance**                      | Standard          |
| **Redundancy**                       | LRS               |
| **Access Tier**                      | Hot               |
| **Enable Infrastructure Encryption** | false             |
| **Allow Nested Items to be Public**  | true              |
