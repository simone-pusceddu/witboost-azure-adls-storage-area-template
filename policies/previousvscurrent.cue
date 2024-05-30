import "list"
import "strings"


#Component: {
	kind: string & =~"(?-i)^(outputport|workload|storage|observability)$"
  useCaseTemplateId: string
  infrastructureTemplateId: string
	if kind != _|_ {
		if kind =~ "(?-i)^(storage)$" && useCaseTemplateId =="urn:dmb:utm:azure-storage-adlsgen2-template:0.0.0" && infrastructureTemplateId=="urn:dmb:itm:terraform-adls-provisioner:0" {
			#Storage
		}
	}
	...
}

#Storage: {
    id: string
    specific: {
      containers: string
      ...
    }
	...
}


original: { 
  components: [...#Component]
  ...
}

current: { 
  components: [...#Component]
  ...
}


checks: {
    // Extract ADLS components
    originalADLSComponents: [ for n in original.components if n.kind =="storage" && n.infrastructureTemplateId =="urn:dmb:itm:terraform-adls-provisioner:0" && n.useCaseTemplateId =="urn:dmb:utm:azure-storage-adlsgen2-template:0.0.0" { n } ]
    currentADLSComponents: [ for n in current.components if n.kind =="storage" && n.infrastructureTemplateId =="urn:dmb:itm:terraform-adls-provisioner:0" && n.useCaseTemplateId =="urn:dmb:utm:azure-storage-adlsgen2-template:0.0.0" { n } ]

    // Extract ADLS containers from ADLS components, prefixing them with the respective component id    
    originalContainersNested: [ for component in originalADLSComponents {
        let containersSplitted = strings.Split(component.specific.containers, ",")
        [ for container in containersSplitted { component.id + ":" + container } ]
      }
    ]
    originalContainers: list.FlattenN(originalContainersNested, -1)
    currentContainersNested: [ for component in currentADLSComponents {
        let containersSplitted = strings.Split(component.specific.containers, ",")
        [ for container in containersSplitted { component.id + ":" + container } ]
      }
    ]
    currentContainers: list.FlattenN(currentContainersNested, -1)
    
    // Check that all previous containers are still there
    missingContainers: [ for missing in originalContainers if !list.Contains(currentContainers, missing) { missing } ]
    noMissingContainers: len(missingContainers) & <= 0
}