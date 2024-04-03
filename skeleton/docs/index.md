# ${{ values.name }}


## Component Information

| Field Name               | Value                                                                                                               |
|:-------------------------|:--------------------------------------------------------------------------------------------------------------------|
| **Name**                 | ${{ values.name }}                                                                                                  |
| **Fully Qualified Name** | ${{ values.fullyQualifiedName }}                                                                                    |
| **Description**          | ${{ values.description }}                                                                                           |
| **Domain**               | ${{ values.domain                                                                                                   | replace(r/domain:| |-/, "") }}             |
| **Data Product**         | ${{ values.dataproduct.split(".")[1]                                                                                | replace(r/ |-/g, "") }} |
| **Identifier**           | ${{ values.identifier }}                                                                                            |
| **Depends On**           | ${{ values.dependsOn }}                                                                                             |
{%- if values.tags | length > 0 %}                                                                                                       
| **Tags**                 | {%- for i in values.tags %} - tagFQN: ${{ i }}<br/>&nbsp;&nbsp;source: Tag<br/>&nbsp;&nbsp;labelType: Manual<br/>&nbsp;&nbsp;state: Confirmed<br/><br/>
{%- endfor %} |
{%- else %}
|**Tags**| [] |
{%- endif %}

## ADLS Gen2 Storage Area Deployment Information

| Field Name                 | Value                               |
|:---------------------------|:------------------------------------|
| **Subscription**           | ${{ values.subscription }}          |
| **Resource Group**         | ${{ values.resourceGroup }}         |
| **Storage Account**        | ${{ values.storageAccount }}        |
| **Container**              | ${{ values.container }}             |
| **Region**                 | ${{ values.region }}                |
| **Performance**            | ${{ values.performance }}           |
| **Redundancy**             | ${{ values.redundancy }}            |
| **Access Tier**            | ${{ values.accessTier }}            |
| **Hierarchical Namespace** | ${{ values.hierarchicalNamespace }} |
| **Encryption**             | default                             |
