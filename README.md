# Infrastructure as Code (IaC) avec Sécurité Intégrée

## Description

Ce projet utilise **Terraform** pour déployer une infrastructure cloud sécurisée sur **AWS** avec des vérifications de conformité et de sécurité intégrées via **Checkov** et **Tfsec**. L'objectif est de s'assurer que l'infrastructure déployée est conforme aux meilleures pratiques de sécurité, notamment en termes de gestion des accès (IAM), de politiques réseau, et de pare-feu.

## Fonctionnalités

- **Déploiement Automatisé** : Utilisation de Terraform pour déployer une infrastructure cloud avec un VPC, un sous-réseau, un groupe de sécurité et une instance EC2.
- **Vérification de la Sécurité** : Validation des configurations Terraform avec **Checkov** et **Tfsec** pour s'assurer de la conformité aux meilleures pratiques.
- **Audit Continu** : Possibilité d'exécuter les outils de vérification régulièrement pour identifier et corriger les dérives de configuration.

## Prérequis

- **Terraform** doit être installé.
- Un compte **AWS** avec des clés d'accès configurées.
- **Checkov** et **Tfsec** installés :
    - Pour installer Checkov : `pip install checkov`
    - Pour installer Tfsec : `brew install tfsec` 

## Utilisation

### Étape 1 : Configurer l'environnement AWS

Assurez-vous que vos **AWS Access Key** et **Secret Key** sont configurées correctement. Vous pouvez les configurer via la commande suivante :

```
aws configure
```

### Étape 2 : Initialiser Terraform
Initialisez le projet Terraform avec la commande suivante :

```
terraform init
```

### Étape 3 : Planifier et Appliquer l'Infrastructure
Planifiez et appliquez l'infrastructure sur AWS :

```
terraform plan
terraform apply
```

### Étape 4 : Exécuter les scans de sécurité
Avant ou après le déploiement, vous pouvez exécuter les outils de sécurité pour vérifier les configurations.

Exécuter Checkov :

```
./security_checks/checkov_scan.sh
```
Exécuter Tfsec :

```
./security_checks/tfsec_scan.sh
```

### Étape 5 : Détruire l'infrastructure
Une fois terminé, vous pouvez détruire l'infrastructure déployée avec :

```
terraform destroy
```
Structure du Projet

├── main.tf  
├── variables.tf  
├── outputs.tf  
├── security_checks/  
│   ├── checkov_scan.sh  
│   └── tfsec_scan.sh  
└── README.md  

Contribution
Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une pull request ou un issue.
