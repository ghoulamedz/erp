[![StandWithPalestine](https://raw.githubusercontent.com/TheBSD/StandWithPalestine/main/badges/StandWithPalestine.svg)](https://github.com/TheBSD/StandWithPalestine/blob/main/docs/README.md)


# Logiciel ERP pour Rayhana Inc


* Créer une commande de vente

Acteur : Commercial (Sales)
Description : Le responsable commercial enregistre une nouvelle commande client pour des sacs en plastique ou des produits d’emballage en plastique.
Précondition : L’utilisateur est authentifié dans le système.
Postcondition : La commande de vente est enregistrée dans le système et transmise au service de production pour planification.

* Créer un ordre de production

Acteur : Responsable de production
Description : Le personnel de production crée un ordre de fabrication à partir des commandes de vente confirmées.
Précondition : Le stock de matières premières est disponible.
Postcondition : L’ordre de production est planifié et prêt à être exécuté.

* Importer des matières premières

Acteur : Magasinier / Responsable des fournisseurs
Description : Les matières premières sont importées depuis les fournisseurs et ajoutées au stock de l’entreprise.
Précondition : Une commande d’achat a été approuvée.
Postcondition : Le stock de matières premières est mis à jour dans le système.

* Générer une facture

Acteur : Comptable
Description : Le comptable génère une facture pour les commandes de vente terminées.
Précondition : La commande de vente est marquée comme terminée.
Postcondition : La facture est enregistrée dans le système et peut être transmise au client.

* Approuver les achats

Acteur : Directeur général
Description : Le directeur valide les commandes d’achat importantes de matières premières.
Précondition : Une demande d’achat existe dans le système.
Postcondition : La commande d’achat est approuvée ou rejetée.



=========

Bon de preparation (de commande)
Bon d'expédition
Bon de livraison
Bon de commande
déclarations d’échanges de biens (DEB)
déclarations d’échanges de services (DES)
factures récurrentes 
==>factures d’acompte 
dates de péremption (DLC)
devis client
devis technique
Ordre de fabrication, gamme de production, fiche suiveuse, bon de travail, listes à servir



========

ordonnancement == scheduling
CBN == calcul des besoins net (English : MRP)

========

interface ergonomique : utilité et utilisabilité

==========

diagrammes de séquences générals :
(capturing an end to end business process (ERP provides end to end visibility to this))
order to cash => recevoir commande client --> recevoir le paiement du client
procure to pay => initier commande matière première --> exécuter le paiement au fournisseur
======

Planification
Stock : Produit fini, produit semi-fini
Factures : factures acompte
            facturation 


    RH ->> test d'habilités : contrat test puis -> 