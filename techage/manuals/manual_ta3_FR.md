# TA3 : Âge du Pétrole

Dans TA3, il s'agit de remplacer les machines à vapeur par des machines plus performantes et alimentées par l'électricité.

Pour cela, vous devez construire des centrales électriques au charbon et des générateurs. Vous verrez bientôt que vos besoins en électricité ne peuvent être couverts que par des centrales électriques alimentées au pétrole. Vous devez donc partir à la recherche de pétrole. Les tours de forage et les pompes à pétrole vous aideront à accéder au pétrole. Les voies ferrées vous serviront à transporter le pétrole jusqu'aux centrales électriques.

L'âge industriel est à son apogée.

[techage_ta3|image]

## Centrale électrique au charbon / Centrale électrique au pétrole

La centrale électrique au charbon se compose de plusieurs blocs et doit être assemblée comme illustré dans le plan à droite. Pour cela, les blocs TA3 Boîte à feu de la centrale électrique, TA3 Chaudiere haut, TA3 Chaudiere bas, TA3 Turbine, TA3 Générateur et TA3 Réfrigérant sont nécessaires.

La chaudière doit être remplie d'eau. Pour cela, remplissez la chaudière avec jusqu'à 10 seaux d'eau.
La boîte à feu doit être remplie de charbon ou de charbon de bois.
Lorsque l'eau est chaude, le générateur peut être démarré.

La centrale électrique peut également être équipée d'un brûleur à pétrole et fonctionner avec du pétrole.
Le pétrole peut être réapprovisionné via une pompe et une conduite de pétrole.

La centrale électrique fournit une puissance de 80 ku.

[coalpowerstation|plan]

### TA3 Boîte à feu de la centrale électrique / Power Station Firebox

Partie de la centrale électrique.
La boîte à feu doit être remplie de charbon ou de charbon de bois. La durée de combustion dépend de la puissance demandée par la centrale électrique. À pleine charge, le charbon brûle pendant 20 s et le charbon de bois pendant 60 s. À charge partielle, la durée est plus longue (50% de charge = double durée).

[ta3_firebox|image]

### TA3 Brûleur à pétrole de la centrale électrique / TA3 Power Station Oil Burner

Partie de la centrale électrique.

Le brûleur à pétrole peut être rempli de pétrole brut, de fioul lourd, de naphta ou d'essence. La durée de combustion dépend de la puissance demandée par la centrale électrique. À pleine charge, le pétrole brut brûle pendant 15 s, le fioul lourd pendant 20 s, le naphta pendant 22 s et l'essence pendant 25 s.

À charge partielle, la durée est plus longue (50% de charge = double durée).

Le brûleur à pétrole ne peut contenir que 50 unités de carburant. Un réservoir de pétrole supplémentaire et une pompe à pétrole sont donc recommandés.

[ta3_oilbox|image]

### TA3 Chaudiere bas/haut

Partie de la centrale électrique. Doit être remplie d'eau. Si plus d'eau n'est disponible ou si la température descend trop bas, la centrale électrique s'éteint. La consommation d'eau de la chaudière TA3 est beaucoup plus faible que celle de la machine à vapeur grâce au circuit de vapeur fermé.
Avec la machine à vapeur, une certaine quantité d'eau est perdue sous forme de vapeur à chaque coup de piston.

[ta3_boiler|image]

### TA3 Turbine

La turbine fait partie de la centrale électrique. Elle doit être placée à côté du générateur et connectée à la chaudière et au réfrigérant via des conduites de vapeur, comme illustré dans le plan.

[ta3_turbine|image]

### TA3 Générateur

Le générateur sert à produire de l'électricité. Il doit être connecté aux machines via des câbles électriques et des boîtes de distribution.

[ta3_generator|image]

### TA3 Réfrigérant / Cooler

Sert à refroidir la vapeur chaude de la turbine. Doit être connecté à la chaudière et à la turbine via des conduites de vapeur, comme illustré dans le plan.

[ta3_cooler|image]

## Électricité

Dans TA3 (et TA4), les machines sont alimentées par l'électricité. Pour cela, les machines, les systèmes de stockage et les générateurs doivent être connectés par des câbles électriques.
TA3 possède 2 types de câbles électriques :

- Câbles isolés (TA Stromkabel) pour le câblage local dans le sol ou dans les bâtiments. Ces câbles peuvent être cachés dans le mur ou dans le sol (peuvent être "enduits" avec la truelle).
- Lignes aériennes (TA Stromleitung) pour le câblage en extérieur sur de grandes distances. Ces câbles sont protégés et ne peuvent donc pas être retirés par d'autres joueurs.

Plusieurs consommateurs, systèmes de stockage et générateurs peuvent être utilisés ensemble dans un réseau électrique. Avec l'aide des boîtes de distribution, des réseaux peuvent être construits.
Si trop peu d'électricité est fournie, les consommateurs s'éteignent.
Dans ce contexte, il est également important de comprendre le fonctionnement des blocs Forceload, car par exemple les générateurs ne fournissent de l'électricité que si le Map-Block correspondant est chargé. Cela peut être forcé avec un bloc Forceload.

Dans TA4, un câble supplémentaire pour l'installation solaire est ajouté.

[ta3_powerswitch|image]

### Importance des systèmes de stockage

Les systèmes de stockage dans le réseau électrique remplissent deux fonctions :

- Pour absorber les pics de demande : Tous les générateurs fournissent toujours exactement la puissance nécessaire. Cependant, si des consommateurs sont allumés ou éteints ou s'il y a des fluctuations de demande pour d'autres raisons, les consommateurs peuvent tomber en panne temporairement. Pour éviter cela, il doit toujours y avoir au moins un bloc de batterie dans chaque réseau. Celui-ci sert de tampon et compense ces fluctuations dans la plage de secondes.
- Pour stocker l'énergie renouvelable : Le solaire et l'éolien ne sont pas disponibles 24 heures sur 24. Pour que l'alimentation électrique ne tombe pas en panne lorsque aucune électricité n'est produite, un ou plusieurs systèmes de stockage doivent être intégrés dans le réseau. Alternativement, les lacunes peuvent également être comblées par l'électricité provenant du pétrole/charbon.

Un système de stockage indique sa capacité en kud, c'est-à-dire ku par jour (jour). Par exemple, un système de stockage de 100 kud fournit 100 ku pendant une journée de jeu, ou aussi 10 ku pendant 10 jours de jeu.

Toutes les sources d'énergie TA3/TA4 possèdent une caractéristique de charge réglable. Par défaut, celle-ci est réglée sur "80% - 100%". Cela signifie que la puissance est toujours réduite à partir de 80% de remplissage du système de stockage, jusqu'à ce qu'elle s'éteigne complètement à 100%. Tant que de l'électricité est nécessaire dans le réseau, les 100% ne sont jamais atteints, car la puissance du générateur finit par descendre au niveau de la demande en électricité dans le réseau et ainsi le système de stockage n'est plus chargé, mais seulement les consommateurs sont alimentés.

Cela présente plusieurs avantages :

- La caractéristique de charge est réglable. Ainsi, on peut par exemple réduire les sources d'énergie pétrole/charbon à 60% et les sources d'énergie renouvelable seulement à 80%. Ainsi, seul le pétrole/charbon est brûlé lorsque les sources d'énergie renouvelable ne sont pas suffisantes.
- Plusieurs sources d'énergie peuvent être utilisées en parallèle et sont ainsi presque uniformément sollicitées, car toutes les sources d'énergie fonctionnent par exemple jusqu'à 80% de capacité de charge du système de stockage avec leur pleine puissance et réduisent ensuite simultanément leur puissance.
- Tous les systèmes de stockage dans un réseau forment un grand tampon. Sur chaque système de stockage, mais aussi sur le terminal électrique, la capacité de charge et le degré de remplissage de l'ensemble du système de stockage peuvent être lus en pourcentage.  [power_reduction|image]

### TA Câble électrique

Pour le câblage local dans le sol ou dans les bâtiments.
Les branches peuvent être réalisées à l'aide de boîtes de distribution. La longueur maximale de câble entre les machines ou les boîtes de distribution est de 1000 m. Un maximum de 1000 nœuds peuvent être connectés dans un réseau électrique. Les nœuds incluent tous les blocs avec une connexion électrique, y compris les boîtes de distribution.

Comme les câbles électriques ne sont pas automatiquement protégés, les lignes aériennes (TA Stromleitung) sont recommandées pour les longues distances.

Les câbles électriques peuvent être cachés dans le mur ou dans le sol avec la truelle. Tous les blocs de pierre, d'argile et autres blocs sans "intelligence" peuvent être utilisés comme matériau pour le revêtement. La terre (dirt) ne fonctionne pas, car la terre peut être convertie en herbe ou similaire, ce qui détruirait la ligne.

Pour revêtir, il faut cliquer sur le câble avec la truelle. Le matériau avec lequel le câble doit être revêtu doit se trouver tout à gauche dans l'inventaire du joueur.
Les câbles peuvent être rendus à nouveau visibles en cliquant à nouveau sur le bloc avec la truelle.

En plus des câbles, la boîte de distribution TA et la boîte de commutateur électrique TA peuvent également être revêtues.

[ta3_powercable|image]

### TA Boîte de distribution / Boîte de jonction électrique

Avec la boîte de distribution, l'électricité peut être distribuée dans jusqu'à 6 directions. Les boîtes de distribution peuvent également être revêtues (cachées) et rendues à nouveau visibles avec la truelle.

[ta3_powerjunction|image]

### TA Ligne électrique

Avec la ligne électrique TA et les poteaux électriques, des lignes aériennes semi-réalistes peuvent être réalisées. Les têtes de poteaux électriques servent également à protéger la ligne électrique (Protection). Pour cela, un poteau doit être placé tous les 16 m ou moins. La protection s'applique cependant uniquement à la ligne électrique et aux poteaux, tous les autres blocs dans cette zone ne sont pas protégés par cela.

[ta3_powerline|image]

### TA Poteau électrique

Sert à construire des poteaux électriques. Est protégé contre la destruction par la tête de poteau électrique et ne peut être à nouveau démonté que par le propriétaire.

[ta3_powerpole|image]

### TA Tête de poteau électrique

Possède jusqu'à quatre bras et permet ainsi de distribuer l'électricité dans jusqu'à 6 directions.
La tête de poteau électrique protège les lignes électriques et les poteaux dans un rayon de 8 m.

[ta3_powerpole4|image]

### TA Tête de poteau électrique 2

Cette tête de poteau électrique possède deux bras fixes et est utilisée pour les lignes aériennes. Elle peut également transmettre l'électricité vers le haut et vers le bas.
La tête de poteau électrique protège les lignes électriques et les poteaux dans un rayon de 8 m.

[ta3_powerpole2|image]

### TA Interrupteur électrique

Avec l'interrupteur, l'électricité peut être allumée et éteinte. L'interrupteur doit être placé sur une boîte de commutateur électrique. La boîte de commutateur électrique doit être connectée des deux côtés au câble électrique.

[ta3_powerswitch|image]

### TA Petit interrupteur électrique

Avec l'interrupteur, l'électricité peut être allumée et éteinte. L'interrupteur doit être placé sur une boîte de commutateur électrique. La boîte de commutateur électrique doit être connectée des deux côtés au câble électrique.

[ta3_powerswitchsmall|image]

### TA Boîte de commutateur électrique

Voir TA Interrupteur électrique.

[ta3_powerswitchbox|image]

### TA3 Petit générateur électrique

Le petit générateur électrique fonctionne à l'essence et peut être utilisé pour des petits consommateurs jusqu'à 12 ku. À pleine charge, l'essence brûle pendant 150 s. À charge partielle, la durée est plus longue (50% de charge = double durée).

Le générateur électrique ne peut contenir que 50 unités d'essence. Un réservoir supplémentaire et une pompe sont donc recommandés.

[ta3_tinygenerator|image]

### TA3 Bloc de batterie

Le bloc de batterie sert à stocker l'énergie excédentaire et fournit automatiquement de l'électricité en cas de panne de courant (dans la mesure du possible).
Plusieurs blocs de batterie ensemble forment un système de stockage d'énergie TA3. Chaque bloc de batterie a un affichage pour l'état de charge et pour la charge stockée, où les valeurs pour l'ensemble du réseau sont toujours affichées. La charge stockée est affichée en "kud", c'est-à-dire "ku-days" (analogue à kWh). 5 kud correspond par exemple à 5 ku pendant une journée de jeu (20 min) ou 1 ku pendant 5 jours de jeu.

Un bloc de batterie a 3,33 kud.

[ta3_akkublock|image]

### TA3 Terminal électrique

Le terminal électrique doit être connecté au réseau électrique. Il affiche les données du réseau électrique.

Dans la moitié supérieure, les grandeurs les plus importantes sont affichées :

- puissance actuelle/maximale du générateur
- consommation actuelle de courant de tous les consommateurs
- courant de charge actuel dans/du système de stockage
- état de charge actuel du système de stockage en pourcentage

Dans la moitié inférieure, le nombre de blocs de réseau est affiché.

Via l'onglet "console", d'autres données peuvent être interrogées sur les générateurs et les systèmes de stockage.

[ta3_powerterminal|image]

### TA3 Moteur électrique

Pour faire fonctionner les machines TA2 via le réseau électrique, le moteur électrique TA3 est nécessaire. Celui-ci convertit l'électricité en force d'axe.
Si le moteur électrique n'est pas alimenté avec suffisamment d'électricité, il passe en état d'erreur et doit être réactivé par un clic droit.

Le moteur électrique absorbe principalement un maximum de 40 ku d'électricité et restitue secondairement un maximum de 39 ku de force d'axe. Il consomme donc 1 ku pour la conversion.

[ta3_motor|image]

## Four industriel TA3

Le four industriel TA3 sert de complément au four normal (furnace). Ainsi, toutes les marchandises avec des recettes de "cuisson" peuvent également être produites dans le four industriel. Il existe également des recettes spéciales qui ne peuvent être produites que dans le four industriel.
Le four industriel a son propre menu pour la sélection des recettes. En fonction des marchandises dans l'inventaire gauche du four industriel, le produit de sortie peut être choisi à droite.

Le four industriel nécessite de l'électricité (pour le ventilateur) ainsi que du fioul lourd/essence pour le brûleur. Le four industriel doit être assemblé comme illustré dans le plan à droite.

Voir aussi TA4 Chauffage de four.

[ta3_furnace|plan]

### TA3 Brûleur à pétrole de four

Fait partie du four industriel TA3.

Le brûleur à pétrole peut fonctionner avec du pétrole brut, du fioul lourd, du naphta ou de l'essence. Le temps de combustion est de 65 s pour le pétrole brut, 80 s pour le fioul lourd, 90 s pour le naphta et 100 s pour l'essence.

Le brûleur à pétrole ne peut contenir que 50 unités de carburant. Un réservoir supplémentaire et une pompe sont donc recommandés.

[ta3_furnacefirebox|image]

### TA3 Partie supérieure du four / Partie supérieure du four TA3

Fait partie du four industriel TA3. Voir Four industriel TA3.

[ta3_furnace|image]

### TA3 Ventilateur / Ventilateur TA3

Fait partie du four industriel TA3. Voir Four industriel TA3.

[ta3_booster|image]

## Liquides

Les liquides comme l'eau ou le pétrole ne peuvent être pompés et stockés que dans des conduites et des réservoirs spéciaux. Comme pour l'eau, il existe cependant des conteneurs (bidons, fûts) dans lesquels les liquides peuvent être stockés et transportés.

Via les conduites jaunes et les pièces de connexion, il est également possible de connecter plusieurs réservoirs. Cependant, les réservoirs doivent avoir le même contenu et entre le réservoir, la pompe et le distributeur, il doit toujours y avoir au moins une conduite jaune.

Par exemple, connecter directement deux réservoirs avec une pièce de distributeur ne fonctionne pas.

Pour transférer des liquides des conteneurs aux réservoirs, le trémie de remplissage est utilisé. Le plan montre comment les bidons ou les fûts avec des liquides sont poussés dans un trémie de remplissage via des poussoirs. Dans le trémie de remplissage, le conteneur est vidé et le liquide est conduit vers le bas dans le réservoir.

Le trémie de remplissage peut également être placé sous un réservoir pour vider le réservoir.

[ta3_tank|plan]

### TA3 Réservoir / Réservoir TA3

Dans un réservoir, des liquides peuvent être stockés. Un réservoir peut être rempli ou vidé via une pompe. Pour cela, la pompe doit être connectée au réservoir via une conduite (tube jaune).

Un réservoir peut également être rempli ou vidé à la main en cliquant sur le réservoir avec un conteneur de liquide plein ou vide (fût, bidon). Il faut noter que les fûts ne peuvent être remplis ou vidés que complètement. Par exemple, s'il y a moins de 10 unités dans le réservoir, ce reste doit être prélevé avec des bidons ou vidé par pompage.

Dans un réservoir TA3, 1000 unités ou 100 fûts d'un liquide peuvent tenir.

[ta3_tank|image]

### TA3 Pompe / Pompe TA3

Avec la pompe, des liquides peuvent être pompés des réservoirs ou des conteneurs vers d'autres réservoirs ou conteneurs. Avec la pompe, la direction de pompage (flèche) doit être respectée. Via les conduites jaunes et les pièces de connexion, il est également possible de disposer plusieurs réservoirs de chaque côté de la pompe. Cependant, les réservoirs doivent avoir le même contenu.

La pompe TA3 pompe 4 unités de liquide toutes les deux secondes.

Remarque 1 : La pompe ne doit pas être placée directement à côté du réservoir. Il doit toujours y avoir au moins une pièce de conduite jaune entre les deux.

Remarque 2 : Après le démarrage, la pompe marque 10 fois les blocs d'où et vers où le pompage a lieu.

[ta3_pump|image]

### TA Trémie de remplissage / Trémie de remplissage de liquide TA

Pour transférer des liquides entre des conteneurs et des réservoirs, la trémie de remplissage est utilisée.

- si la trémie de remplissage est placée sous un réservoir et que des fûts vides sont donnés dans la trémie de remplissage avec un poussoir ou à la main, le contenu du réservoir est transféré dans les fûts et les fûts peuvent être à nouveau prélevés du côté de la sortie
- si la trémie de remplissage est placée sur un réservoir et que des fûts pleins sont donnés dans la trémie de remplissage avec un poussoir ou à la main, ils sont transférés dans le réservoir et les fûts peuvent être à nouveau prélevés du côté de la sortie

Il faut noter que les fûts ne peuvent être remplis ou vidés que complètement. Par exemple, s'il y a moins de 10 unités dans le réservoir, ce reste doit être prélevé avec des bidons ou vidé par pompage.

[ta3_filler|image]

### TA4 Tube / Tube

Les tubes jaunes servent à acheminer les gaz et les liquides.
La longueur maximale de la conduite est de 100 m.

[ta3_pipe|image]

### TA3 Bloc de passage de tube/mur / Bloc de passage de tube/mur TA3

Les blocs servent de passages de mur pour les tubes, de sorte qu'aucun trou ne reste ouvert.

[ta3_pipe_wall_entry|image]

### TA Vanne / Vanne TA

Pour les tubes jaunes, il existe une vanne qui peut être ouverte et fermée via des clics de souris.
La vanne peut également être commandée via des commandes on/off.

[ta3_valve|image]

## Extraction de pétrole

Pour pouvoir faire fonctionner vos générateurs et fours avec du pétrole, vous devez d'abord rechercher du pétrole et construire une tour de forage, puis extraire le pétrole.
Pour cela, vous disposez du TA3 Ölexplorer, du TA3 Ölbohrkiste et du TA3 Ölpumpe.

[techage_ta3|image]

### TA3 Ölexplorer / Explorateur de pétrole

Avec l'explorateur de pétrole, vous pouvez rechercher du pétrole. Pour cela, placez le bloc sur le sol et démarrez la recherche avec un clic droit. L'explorateur de pétrole peut être utilisé en surface et en sous-sol à toutes les profondeurs.
Via la sortie de chat, il vous est indiqué à quelle profondeur le pétrole a été recherché et combien de pétrole (oil) a été trouvé.
Vous pouvez cliquer plusieurs fois sur le bloc pour rechercher du pétrole dans des zones plus profondes. Les champs pétrolifères ont une taille de 4000 à 20000 unités.

Si la recherche a été infructueuse, vous devez déplacer le bloc d'environ 16 m plus loin.
L'explorateur de pétrole recherche toujours du pétrole dans tout le Map-Block et en dessous où il a été placé. Une nouvelle recherche dans le même Map-Block (champ de 16x16) n'a donc pas de sens.

Si du pétrole a été trouvé, l'emplacement pour la tour de forage est indiqué. Vous devez construire la tour de forage dans la zone indiquée, marquer l'emplacement avec une plaque et protéger toute la zone contre les autres joueurs.

Ne renoncez pas trop vite à la recherche de pétrole. Il peut, si vous avez de la malchance, prendre très longtemps avant de trouver une source de pétrole.
Il n'a également aucun sens de rechercher à nouveau une zone qu'un autre joueur a déjà explorée. La chance de trouver du pétrole quelque part est la même pour tous les joueurs.

L'explorateur de pétrole peut être utilisé à plusieurs reprises pour rechercher du pétrole.

[ta3_oilexplorer|image]

### TA3 Ölbohrkiste / Boîte de forage pétrolier

La boîte de forage pétrolier doit être placée à l'endroit indiqué par l'explorateur de pétrole. Forer à d'autres endroits pour du pétrole est inutile.
Si vous cliquez sur le bouton de la boîte de forage pétrolier, une tour de forage est construite au-dessus de la boîte. Cela prend quelques secondes.
La boîte de forage pétrolier a 4 côtés, sur IN, le train de tiges de forage doit être livré via un poussoir et sur OUT, le matériau de forage doit être évacué. Sur l'un des deux autres côtés, la boîte de forage pétrolier doit être alimentée en électricité.

La boîte de forage pétrolier fore jusqu'au champ pétrolifère (1 mètre en 16 s) et nécessite pour cela 16 ku d'électricité.
Une fois le champ pétrolifère atteint, la tour de forage peut être démontée et la boîte retirée.

[ta3_drillbox|image]

### TA3 Ölpumpe / Pompe à pétrole

À la place de la boîte de forage pétrolier, la pompe à pétrole doit maintenant être placée. La pompe à pétrole a également besoin d'électricité (16 ku) et fournit une unité de pétrole brut toutes les 8 s. Le pétrole brut doit être collecté dans un réservoir. Pour cela, la pompe à pétrole doit être connectée au réservoir via une conduite (tube jaune).
Une fois tout le pétrole pompé, la pompe à pétrole peut également être retirée.

[ta3_pumpjack|image]

### TA3 Bohrgestänge / Train de tiges de forage

Le train de tiges de forage est nécessaire pour le forage. Il faut autant d'unités de train de tiges de forage que la profondeur indiquée pour le champ pétrolifère. Le train de tiges de forage est inutile après le forage, mais ne peut pas non plus être démonté et reste dans le sol. Cependant, il existe un outil pour pouvoir à nouveau retirer les blocs de train de tiges de forage (-> Outils -> Pince pour train de tiges de forage TA3).

[ta3_drillbit|image]

### Réservoir de pétrole / Réservoir de pétrole

Le réservoir de pétrole est la grande version du réservoir TA3 (voir Liquides -> Réservoir TA3).

Le grand réservoir peut contenir 4000 unités de pétrole, mais aussi tout autre type de liquide.

[oiltank|image]

## Transport de pétrole

### Transport de pétrole avec le wagon-citerne
Pour transporter le pétrole de la source de pétrole à l'installation de traitement du pétrole, des wagons-citernes (tank carts) peuvent être utilisés. Un wagon-citerne peut être rempli ou vidé directement via des pompes. Dans les deux cas, le tube jaune doit être connecté par le haut au wagon-citerne.

Pour cela, les étapes suivantes sont nécessaires :

- Placer le wagon-citerne devant le butoir. Le butoir ne doit pas encore être programmé avec un temps, de sorte que le wagon-citerne ne démarre pas automatiquement
- Connecter le wagon-citerne aux pompes via des tubes jaunes
- Allumer la pompe
- Programmer le butoir avec un temps (10 - 20 s)

Cet ordre doit être respecté des deux côtés (remplissage/vidange).

[tank_cart|image]

### Transport de pétrole avec des fûts via des Minecarts
Des bidons et des fûts peuvent être chargés dans les Minecarts. Le pétrole doit d'abord être transvasé dans des fûts. Les fûts de pétrole peuvent être poussés directement dans un Minecart avec un poussoir et des tubes (voir plan). Les fûts vides, qui reviennent par Minecart de la station de déchargement, peuvent être déchargés via un entonnoir, qui est placé sous le rail à la station.

Il n'est pas possible avec l'entonnoir de décharger les fûts vides et de charger les fûts pleins à une seule station. L'entonnoir décharge immédiatement les fûts pleins. Il est donc conseillé de configurer respectivement 2 stations du côté de la charge et de la décharge et de programmer le Minecart en conséquence via un trajet d'enregistrement.

Le plan montre comment le pétrole peut être pompé dans un réservoir et transvasé dans des fûts via un entonnoir de remplissage et chargé dans des Minecarts.

Pour que les Minecarts redémarrent automatiquement, les butoirs doivent être configurés avec un nom de station et un temps d'attente. Pour le déchargement, 5 s suffisent. Cependant, comme les poussoirs tombent toujours en mode standby pendant plusieurs secondes lorsqu'il n'y a pas de Minecart, un temps de 15 s ou plus doit être saisi pour le chargement.

[ta3_loading|plan]

### Wagon-citerne / Wagon-citerne

Le wagon-citerne sert au transport de liquides. Il peut être rempli ou vidé comme des réservoirs avec des pompes. Dans les deux cas, le tube jaune doit être connecté par le haut au wagon-citerne.

Dans le wagon-citerne, 200 unités peuvent tenir.

[tank_cart|image]

### Wagon à caisses / Wagon à caisses

Le wagon à caisses sert au transport d'objets. Il peut être rempli ou vidé comme des caisses via des poussoirs.

Dans le wagon à caisses, 4 stacks peuvent tenir.

[chest_cart|image]

## Traitement du pétrole

Le pétrole est un mélange de substances et se compose de très nombreux composants. Via une tour de distillation, le pétrole peut être décomposé en ses principaux composants tels que le bitume, le fioul lourd, le naphta, l'essence et le gaz.
Le traitement ultérieur en produits finis se fait dans le réacteur chimique.

[techage_ta31|image]

### Tour de distillation / Tour de distillation

La tour de distillation doit être construite comme illustré dans le plan en haut à droite.
Via le bloc de base, le bitume est évacué. La sortie est sur le côté arrière du bloc de base (faire attention à la direction de la flèche).
Sur ce bloc de base, les blocs "Tour de distillation" avec les numéros : 1, 2, 3, 2, 3, 2, 3, 4 sont placés.
Aux ouvertures de bas en haut, le fioul lourd, le naphta et l'essence sont dérivés. Tout en haut, le gaz propane est capté.
Tous les ouvertures de la tour doivent être connectées à des réservoirs.
Le réchauffeur (reboiler) doit être connecté au bloc "Tour de distillation 1".

Le réchauffeur a besoin d'électricité (non visible dans le plan) !

[ta3_distiller|plan]

#### Réchauffeur / Réchauffeur

Le réchauffeur chauffe le pétrole brut à environ 400°C. Il se vaporise largement et est conduit vers la tour de distillation pour refroidissement.

Le réchauffeur nécessite 14 unités d'électricité et produit toutes les 16 s respectivement une unité de bitume, de fioul lourd, de naphta, d'essence et de gaz propane.
Pour cela, le réchauffeur doit être alimenté en pétrole brut via une pompe.

[reboiler|image]

## Blocs logiques/commutateurs

En plus des tubes pour le transport de marchandises, ainsi que des conduites de gaz et d'électricité, il existe également un niveau de communication sans fil via lequel les blocs peuvent échanger des données entre eux. Pour cela, aucune ligne ne doit être tirée, mais la connexion entre l'émetteur et le récepteur se fait uniquement via le numéro de bloc.

**Info :** Un **numéro de bloc** est un nombre unique généré par Techage lors du placement de nombreux blocs Techage. Le numéro de bloc sert à l'adressage lors de la communication entre les contrôleurs Techage et les machines. Tous les blocs qui peuvent participer à cette communication affichent le numéro de bloc comme texte d'information lorsque le bloc est fixé avec le curseur de la souris.

Quelles commandes un bloc prend en charge peut être lu et affiché avec l'outil d'information TechAge (clé à molette).
Les commandes les plus simples, prises en charge par presque tous les blocs, sont :

- `on` - Allumer le bloc/machine/lampe
- `off` - Éteindre le bloc/machine/lampe

Avec l'aide du terminal TA3, ces commandes peuvent être facilement testées. Supposons qu'une lampe de signalisation ait le numéro 123.
Alors, avec :

    cmd 123 on

la lampe peut être allumée, et avec :

    cmd 123 off

la lampe peut être à nouveau éteinte. Ces commandes doivent être saisies ainsi dans le champ de saisie du terminal TA3.

Des commandes comme `on` et `off` sont envoyées au récepteur sans qu'une réponse ne revienne. Ces commandes peuvent donc, par exemple, être envoyées simultanément à plusieurs récepteurs avec un bouton/interrupteur si plusieurs numéros sont saisis dans le champ de saisie.

Une commande comme `state` demande l'état d'un bloc. Le bloc envoie ensuite son état en retour. Ce type de commandes confirmées ne peut être envoyé qu'à un seul récepteur à la fois.
Cette commande peut également être testée, par exemple, sur un poussoir avec le terminal TA3 :

    cmd 123 state

Les réponses possibles du poussoir sont :
- `running` --> je suis en train de travailler
- `stopped` --> éteint
- `standby` --> rien à faire, car l'inventaire source est vide
- `blocked` --> je ne peux rien faire, car l'inventaire cible est plein

Cet état et d'autres informations sont également affichés lorsque vous cliquez sur le bloc avec la clé à molette.

[ta3_logic|image]

### TA3 Bouton/Interrupteur / Bouton/Interrupteur

Le bouton/interrupteur envoie des commandes `on`/`off` aux blocs qui sont configurés via les numéros.
Le bouton/interrupteur peut être configuré comme un bouton (button) ou un interrupteur (switch). S'il est configuré comme un bouton, le temps entre les commandes `on` et `off` peut être réglé. Avec le mode de fonctionnement "on button", seule une commande `on` et aucune commande `off` n'est envoyée.

Via la case à cocher "public", il peut être réglé si le bouton peut être utilisé par tout le monde (coché), ou seulement par le propriétaire lui-même (non coché).

Remarque : Avec le programmeur, les numéros de bloc peuvent être collectés et configurés très facilement.

[ta3_button|image]

### TA3 Convertisseur de commandes / Convertisseur de commandes

Avec le convertisseur de commandes TA3, les commandes `on` / `off` peuvent être converties en d'autres commandes, ainsi que la transmission empêchée ou retardée. Le numéro du bloc cible ou les numéros des blocs cibles auxquels les commandes doivent être envoyées, ainsi que les temps de retard en secondes doivent être saisis. Si aucune commande n'est saisie, rien n'est envoyé.

Les numéros peuvent également être programmés à l'aide du programmeur Techage.

[ta3_command_converter|image]

### TA3 Flipflop / Flip-Flop

Le flipflop TA3 change d'état avec chaque commande `on` reçue. Les commandes `off` reçues sont ignorées. Ainsi, en fonction du changement d'état, des commandes `on` / `off` sont envoyées en alternance. Le numéro du bloc cible ou les numéros des blocs cibles doivent être saisis. Les numéros peuvent également être programmés à l'aide du programmeur Techage.

Ainsi, par exemple, des lampes peuvent être allumées et éteintes à l'aide de boutons.

[ta3_flipflop|image]

### TA3 Bloc logique / Bloc logique

Le bloc logique TA3 peut être programmé de sorte qu'une ou plusieurs commandes d'entrée soient liées à une commande de sortie et envoyées. Ce bloc peut donc remplacer divers éléments logiques tels que AND, OR, NOT, XOR, etc.
Les commandes d'entrée pour le bloc logique sont des commandes `on`/`off`.
Les commandes d'entrée sont référencées par le numéro, par exemple `1234` pour la commande de l'émetteur avec le numéro 1234.
La même chose s'applique aux commandes de sortie.

Une règle est construite comme suit :

```
<output> = on/off if <input-expression> is true
```

`<output>` est le numéro du bloc auquel la commande doit être envoyée.
`<input-expression>` est une expression booléenne dans laquelle les numéros d'entrée sont évalués.

**Exemples pour l'expression d'entrée**

Signal négatif (NOT) :

    1234 == off

ET logique (AND) :

    1234 == on and 2345 == on

OU logique (OR) :

    1234 == on or 2345 == on

Les opérateurs suivants sont autorisés : `and` `or` `on` `off` `me` `==` `~=` `(` `)`

Si l'expression est vraie (true), une commande est envoyée au bloc avec le numéro `<output>`.

Jusqu'à quatre règles peuvent être définies, toutes les règles étant toujours vérifiées lorsqu'une commande est reçue.

Le temps de traitement interne de toutes les commandes est de 100 ms.

Via le mot-clé `me`, le propre numéro de nœud peut être référencé. Ainsi, il est possible que le bloc s'envoie une commande à lui-même (fonction Flip-Flop).

Le temps de verrouillage définit une pause après une commande, pendant laquelle le bloc logique n'accepte plus de commande externe. Les commandes reçues pendant le temps de verrouillage sont ainsi rejetées. Le temps de verrouillage peut être défini en secondes.

[ta3_logic|image]

### TA3 Répéteur / Répéteur

Le répéteur (repeater) transmet le signal reçu à tous les numéros configurés.
Cela peut par exemple être utile si de nombreux blocs doivent être commandés simultanément. Le répéteur peut être configuré avec le programmeur, ce qui n'est pas possible avec tous les blocs.

[ta3_repeater|image]

### TA3 Séquenceur / Séquenceur

Le séquenceur peut envoyer une série de commandes `on`/`off`, le délai entre les commandes devant être spécifié en secondes. Ainsi, par exemple, une lampe peut être faite clignoter.
Jusqu'à 8 commandes peuvent être configurées, chacune avec le numéro du bloc cible et le délai jusqu'à la commande suivante.
Le séquenceur répète les commandes sans fin si "Run endless" est activé.
Si aucune commande n'est sélectionnée, seul le temps spécifié en secondes est attendu.

[ta3_sequencer|image]

### TA3 Minuterie

La minuterie peut envoyer des commandes en fonction de l'heure de jeu. Pour chaque ligne de commande, l'heure, le numéro de cible(s) et la commande elle-même peuvent être spécifiés. Ainsi, par exemple, des lampes peuvent être allumées le soir et éteintes à nouveau le matin.

[ta3_timer|image]

### TA3 Terminal

Le terminal sert principalement à tester l'interface de commande d'autres blocs (voir "Blocs logiques/commutateurs"), ainsi qu'à automatiser des installations à l'aide du langage de programmation BASIC.
Cependant, des commandes peuvent également être placées sur des boutons et ainsi le terminal peut être utilisé de manière productive.

    set <button-num> <button-text> <command>

Avec `set 1 ON cmd 123 on`, par exemple, le bouton utilisateur 1 peut être programmé avec la commande `cmd 123 on`. Lorsque le bouton est pressé, la commande est envoyée et la réponse est affichée à l'écran.

Le terminal possède les commandes locales suivantes :
- `clear` efface l'écran
- `help` affiche une page d'aide
- `pub` passe en mode public
- `priv` passe en mode privé

En mode privé (private), le terminal ne peut être utilisé que par les joueurs qui peuvent construire à cet endroit, c'est-à-dire qui possèdent des droits de protection. En mode public (public), tous les joueurs peuvent utiliser les boutons préconfigurés.

Via le menu de la clé à molette, on peut passer en mode BASIC. Plus d'informations sur le mode BASIC peuvent être trouvées [ici](https://github.com/joe7575/techage/tree/master/manuals/ta3_terminal.md)

[ta3_terminal|image]

### Lampe colorée TechAge / Lampe colorée

La lampe colorée peut être allumée et éteinte avec la commande `on`/`off`. Cette lampe n'a pas besoin d'électricité et peut être colorée avec le pistolet à peinture de la mod "Unified Dyes" et via des commandes Lua/Beduino.

Avec la commande de chat `/ta_color`, la palette de couleurs avec les valeurs pour les commandes Lua/Beduino est affichée et avec `/ta_send color <num>`, la couleur peut être changée.

[ta3_colorlamp|image]

### Blocs de porte/portail / Blocs de porte/portail

Avec ces blocs, des portes et des portails peuvent être réalisés, qui peuvent être ouverts (les blocs disparaissent) et refermés avec des commandes. Pour chaque porte ou portail, un contrôleur de porte est nécessaire.

L'apparence des blocs peut être réglée via le menu du bloc.
Ainsi, des portes secrètes peuvent être réalisées, qui ne s'ouvrent que pour certains joueurs (avec l'aide du détecteur de joueurs).

[ta3_doorblock|image]

### TA3 Contrôleur de porte / Contrôleur de porte

Le contrôleur de porte sert à commander les blocs de porte/portail TA3. Dans le contrôleur de porte, les numéros des blocs de porte/portail doivent être saisis. Lorsqu'une commande `on`/`off` est envoyée au contrôleur de porte, celui-ci ouvre/ferme la porte ou le portail.

[ta3_doorcontroller|image]

### TA3 Contrôleur de porte II / Contrôleur de porte II

Le contrôleur de porte II peut retirer et replacer tous les types de blocs. Pour enseigner le contrôleur de porte II, le bouton "Enregistrer" doit être pressé. Ensuite, tous les blocs doivent être cliqués, qui doivent faire partie de la porte/du portail. Ensuite, le bouton "Terminé" doit être pressé. Jusqu'à 16 blocs peuvent être sélectionnés. Les blocs retirés sont stockés dans l'inventaire du contrôleur.

Via le bouton "Échanger", la fonction du contrôleur peut être testée manuellement.

Lorsqu'une commande `on` / `off` est envoyée au contrôleur de porte II, il retire ou replace également les blocs.

Avec `$send_cmnd(node_number, "exchange", 2)`, des blocs individuels peuvent être placés, retirés ou remplacés par d'autres blocs de l'inventaire.

Avec `$send_cmnd(node_number, "set", 2)`, un bloc de l'inventaire peut être explicitement placé, à condition que l'emplacement de l'inventaire ne soit pas vide.

Avec `$send_cmnd(node_number, "dig", 2)`, un bloc peut être à nouveau retiré, à condition que l'emplacement de l'inventaire soit vide.

Avec `$send_cmnd(node_number, "get", 2)`, le nom du bloc placé est renvoyé.

Le numéro de l'emplacement de l'inventaire (1 .. 16) doit être transmis comme charge utile dans les trois cas.

Avec `$send_cmnd(node_number, "reset")`, le contrôleur de porte est réinitialisé.

Ainsi, des escaliers escamotables et similaires peuvent être simulés.

[ta3_doorcontroller|image]

### TA3 Bloc sonore

Avec le bloc sonore, différents sons/bruits peuvent être joués. Tous les sons des mods Techage, Signs Bot, Hyperloop, Unified Inventory, TA4 Jetpack et Minetest Game sont disponibles.

Les sons peuvent être sélectionnés et joués via le menu et via une commande.

- Commande `on` pour jouer un son
- Commande `sound <idx>` pour sélectionner un son via l'index
- Commande `gain <volume>` pour régler le volume via la valeur `<volume>` (1 à 5).

[ta3_soundblock|image]

### TA3 Convertisseur Mesecons / Convertisseur Mesecons TA3

Le convertisseur Mesecons sert à convertir les commandes on/off de Techage en signaux Mesecons et vice versa.
Pour cela, un ou plusieurs numéros de nœud doivent être saisis et le convertisseur doit être connecté à des blocs Mesecons via des conduites Mesecons. Le convertisseur Mesecons peut également être configuré avec le programmeur.
Le convertisseur Mesecons accepte jusqu'à 5 commandes par seconde, en cas de charge plus élevée, il s'éteint.

**Ce bloc n'existe que si le mod mesecons est actif !**

[ta3_mesecons_converter|image]

## Détecteurs

Les détecteurs scannent leur environnement et envoient une commande `on` lorsqu'ils reconnaissent ce qui est recherché.

[ta3_nodedetector|image]

### TA3 Détecteur d'objets / Détecteur d'objets

Le détecteur d'objets est un bloc de tube spécial qui reconnaît lorsque des objets sont transmis via le tube. Il doit être connecté des deux côtés au tube. Lorsque des objets sont poussés dans le détecteur avec un poussoir, il les transmet automatiquement.
Il envoie un `on` lorsqu'un objet est reconnu, suivi d'un `off` une seconde plus tard.
Ensuite, d'autres commandes sont bloquées pendant 8 secondes.
Le temps d'attente, ainsi que les objets qui doivent déclencher une commande, peuvent être configurés via le menu de la clé à molette.

[ta3_detector|image]

### TA3 Détecteur de wagon / Détecteur de wagon

Le détecteur de wagon envoie une commande `on` lorsqu'il reconnaît un wagon/wagonnet (Minecart) directement devant lui. De plus, le détecteur peut également redémarrer le wagon lorsqu'une commande `on` est reçue.

Le détecteur peut également être programmé avec son propre numéro. Dans ce cas, il pousse tous les wagons qui s'arrêtent à proximité (un bloc dans toutes les directions).

[ta3_cartdetector|image]

### TA3 Détecteur de blocs / Détecteur de blocs

Le détecteur de blocs envoie une commande `on` lorsqu'il reconnaît que des blocs apparaissent ou disparaissent devant lui, mais doit être configuré en conséquence. Après avoir remis le détecteur dans l'état standard (bloc gris), une commande `off` est envoyée. Les blocs valides sont tous les types de blocs et de plantes, mais pas les animaux ou les joueurs. La portée du capteur est de 3 blocs/mètres dans la direction de la flèche.

[ta3_nodedetector|image]

### TA3 Détecteur de joueurs

Le détecteur de joueurs envoie une commande `on` lorsqu'il reconnaît un joueur dans un rayon de 4 m autour du bloc. Si le joueur quitte à nouveau la zone, une commande `off` est envoyée.
Si la recherche doit être limitée à certains joueurs, leurs noms de joueurs peuvent également être saisis.

[ta3_playerdetector|image]

### TA3 Détecteur de lumière

Le détecteur de lumière envoie une commande `on` lorsque le niveau de lumière du bloc situé au-dessus dépasse un certain niveau qui peut être réglé via le menu de clic droit.
Avec un contrôleur TA4 Lua, le niveau de lumière exact peut être déterminé avec $get_cmd(num, 'light_level').

[ta3_lightdetector|image]

## Machines TA3

Dans TA3, les mêmes machines existent que dans TA2, mais elles sont ici plus performantes et nécessitent de l'électricité au lieu d'un entraînement par axe.
Par conséquent, seules les différentes données techniques sont indiquées ci-dessous.

[ta3_grinder|image]

### TA3 Poussoir / Poussoir

La fonction correspond à celle de TA2.
La capacité de traitement est de 6 objets toutes les 2 s.

[ta3_pusher|image]

### TA3 Distributeur / Distributeur

La fonction du distributeur TA3 correspond à celle de TA2.
La capacité de traitement est de 12 objets toutes les 4 s.

[ta3_distributor|image]

### TA3 Autocrafter

La fonction correspond à celle de TA2.
La capacité de traitement est de 2 objets toutes les 4 s. L'Autocrafter nécessite 6 ku d'électricité.

[ta3_autocrafter|image]

### TA3 Usine d'électronique / Usine d'électronique

La fonction correspond à celle de TA2, mais ici des puces WLAN TA4 sont produites.
La capacité de traitement est d'une puce toutes les 6 s. Le bloc nécessite 12 ku d'électricité.

[ta3_electronicfab|image]

### TA3 Concasseur / Concasseur

La fonction correspond à celle de TA2.
La profondeur maximale est de 40 mètres. Le concasseur nécessite 12 ku d'électricité.

[ta3_quarry|image]

### TA3 Tamis à gravier / Tamis à gravier

La fonction correspond à celle de TA2.
La capacité de traitement est de 2 objets toutes les 4 s. Le bloc nécessite 4 ku d'électricité.

[ta3_gravelsieve|image]

### TA3 Installation de lavage de gravier / Installation de lavage de gravier

La fonction correspond à celle de TA2.
La probabilité est également la même que dans TA2. Le bloc nécessite également 3 ku d'électricité.
Mais contrairement à TA2, l'état peut être interrogé dans le bloc TA3 (contrôleur).

[ta3_gravelrinser|image]

### TA3 Moulin / Moulin

La fonction correspond à celle de TA2.
La capacité de traitement est de 2 objets toutes les 4 s. Le bloc nécessite 6 ku d'électricité.

[ta3_grinder|image]

### TA3 Injecteur / Injecteur

L'injecteur est un poussoir TA3 avec des propriétés spéciales. Il possède un menu pour la configuration. Ici, jusqu'à 8 objets peuvent être configurés. Il ne prélève que ces objets d'une caisse pour les transmettre à des machines avec des recettes (Autocrafter, four industriel et usine d'électronique).

Lors de la transmission, une seule position dans l'inventaire est utilisée par objet dans la machine cible. Par exemple, si seuls les trois premières entrées sont configurées dans l'injecteur, seules les trois premières places de stockage dans l'inventaire de la machine sont occupées. Ainsi, un débordement dans l'inventaire de la machine est évité.

L'injecteur peut également être commuté en "mode de traction". Il ne tire alors que les objets des positions de la caisse qui sont définies dans la configuration de l'injecteur. Ici, le type d'objet et la position doivent correspondre. Ainsi, des places de stockage spécifiques dans l'inventaire d'une caisse peuvent être vidées de manière ciblée.

La capacité de traitement est jusqu'à 8 fois un objet toutes les 4 secondes.

[ta3_injector|image]

## Outils

### Outil d'information Techage

L'outil d'information Techage (clé à molette) a diverses fonctions. Il affiche l'heure, la position, la température et le biome lorsqu'on clique sur un bloc inconnu.
Si on clique sur un bloc TechAge avec une interface de commande, toutes les données disponibles sont récupérées (voir aussi "Blocs logiques/commutateurs").

Avec Shift+Clic droit, un menu étendu peut être ouvert pour certains blocs. Ici, selon le bloc, d'autres données peuvent être récupérées ou des réglages spéciaux peuvent être effectués. Par exemple, la courbe de charge/arrêt peut être programmée pour un générateur.

[ta3_end_wrench|image]

### Programmeur TechAge

Avec le programmeur, les numéros de bloc peuvent être collectés avec un clic droit de plusieurs blocs et écrits avec un clic gauche dans un bloc comme un bouton/interrupteur.
Si on clique dans l'air, la mémoire interne est effacée.

[ta3_programmer|image]

### Truelle TechAge / Truelle

La truelle sert à enduire les câbles électriques. Voir à ce sujet "TA Stromkabel".

[ta3_trowel|image]

### Pince pour train de tiges de forage TA3 / Pince pour train de tiges de forage TA3

Avec cet outil, les blocs de train de tiges de forage peuvent être à nouveau retirés, par exemple si un tunnel doit y être construit.

[ta3_drill_pipe_wrench|image]

### Tournevis TechAge / Tournevis

Le tournevis TechAge sert de remplacement pour le tournevis normal. Il possède les fonctions suivantes :

- Clic gauche : faire tourner le bloc vers la gauche
- Clic droit : faire tourner le côté visible du bloc vers le haut
- Shift+Clic gauche : enregistrer l'orientation du bloc cliqué
- Shift+Clic droit : appliquer l'orientation enregistrée au bloc cliqué

[ta3_screwdriver|image]

### Outil de montage TechAge / Outil de montage

L'outil de montage TechAge sert à retirer et à replacer des blocs TechAge sans que ces blocs ne perdent leur numéro de bloc ou ne reçoivent un nouveau numéro lors du placement. Cela est utile par exemple pour les concasseurs, qui doivent souvent être déplacés.

- Bouton gauche : retirer un bloc
- Bouton droit : placer un bloc

Le bloc qui a été précédemment retiré avec l'outil de montage et qui doit être à nouveau placé doit se trouver tout à gauche dans l'inventaire du joueur.

[techage:assembly_tool|image]
