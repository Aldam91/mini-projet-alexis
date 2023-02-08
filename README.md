# Terraform - Ensitech

## Prérequis 

### Sommaire
 - Terraform 

###  Prérequis AWS
--- 
- Rechercher paires de clés
- Cliquer sur "Créer une paire de clés"
- Cliquer sur "Créer une paire de clés"
- Un fichier avec l'extension .pem est téléchargé automatiquement. Il faut mettre de côté ce fichier 

Nous en avons fini avec la configuration de AWS. Donc nous allons passer à l'installation de Terraform.
 
## Création des ressources
Dans ce mini projet, il nous est demandé d'utiliser les **modules**.
Nous avons:
- Un ec2
- Un ebs
- Un eip qui est notre propre ip publique
- Un security group donc le but est d'être notre Firewall

## Commandes de base pour déployer les ressources

Nous avons les commandes:
**Init**, **Plan**, **Apply**, **Destroy**

1. La commande **Init**

```
terraform init
```
Elle permet de récupérer l'ensembe des **modules** et également des **plugins** notamment le *provider*


2. La commande Terraform **Plan**

```
terraform plan
```
Permet de définir quelles sont les actions qui seront effectivement réalisées si on décide de les faire vraiment.

3. La commande Terraform **Apply**

```
terraform apply
```

Permet d'enterriner et de réaliser ce qui a été planifié


4. La commande Terraform **Destroy**

```
terraform destroy
```
Permet de supprimer l'ensembe des ressources déployées