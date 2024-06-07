name!: string
fullyQualifiedName?: null | string
description!: string
kind: "storage"
version: string
infrastructureTemplateId!: string
useCaseTemplateId!: string
tags: [...string]
dependsOn: [...string]
specific: {
	component: {
		dpDomain!: string
		dpNameMajorVersion!: string
		name!: string
	}
	resourceGroup!: string
	containers!: string & =~"^(?:[a-z0-9][a-z0-9-]{2,62}[a-z0-9](?:,[a-z0-9][a-z0-9-]{2,62}[a-z0-9])*?)$"
	performance!: string & =~"(?-i)^(Premium|Standard)$"
	redundancy!: string & =~"(?-i)^(LRS|GRS|ZRS|GZRS)$"
	accessTier!: string & =~"(?-i)^(Hot|Cold)$"
	infrastructureEncryptionEnabled!: bool
	allowNestedItemsToBePublic!: bool
	state: {
		key!: string
	}
}