name!: string
fullyQualifiedName?: null | string
description!: string
kind: "workload"
version: string
infrastructureTemplateId: string
useCaseTemplateId: string
tags: [...string]
dependsOn: [string, ...string]
specific: {
	subscription!: string
	resourceGroup!: string
	storageAccount!: string
	container!: string
	region!: string
	performance!: string
	redundancy!: string
	accessTier!: string
	hierarchicalNamespace!: bool
	encryption: string
}