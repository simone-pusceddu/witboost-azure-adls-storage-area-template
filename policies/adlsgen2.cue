name!:                     string
fullyQualifiedName?:       null | string
description!:              string
kind!:                     "storage"
version!:                  string
infrastructureTemplateId!: string
useCaseTemplateId!:        string
tags: [...#OM_Tag]
dependsOn: [...string]
specific: {
	component: {
		dpDomain!:           string
		dpNameMajorVersion!: string
		name!:               string
	}
	resourceGroup!: string
	containers!: [string & =~"^[a-z0-9][a-z0-9-]{2,62}[a-z0-9]$", ...]
	performance!:                     string & =~"(?-i)^(Premium|Standard)$"
	redundancy!:                      string & =~"(?-i)^(LRS|GRS|ZRS|GZRS)$"
	accessTier!:                      string & =~"(?-i)^(Hot|Cold)$"
	infrastructureEncryptionEnabled!: bool
	allowNestedItemsToBePublic!:      bool
	state: {
		key!: string
	}
}

#OM_Tag: {
	tagFQN:       string
	description?: string | null
	source:       string & =~"(?i)^(Tag|Glossary)$"
	labelType:    string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state:        string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
}
