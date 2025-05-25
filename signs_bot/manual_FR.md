# Signs Bot

Un robot contrôlé par des panneaux.

Sur le web: https://github.com/joe7575/signs_bot/blob/master/manual_EN.md

[signs_bot_bot_inv.png|image]

## Premiers Pas

Après avoir placé la boîte Signs Bot, vous pouvez démarrer le bot au moyen du bouton 'On' dans le menu de la boîte. Si le bot retourne immédiatement à sa boîte, vous devrez le charger avec de l'énergie électrique (techage) d'abord. Le bot avance ensuite tout droit jusqu'à ce qu'il rencontre un obstacle (une marche avec deux blocs ou plus vers le haut ou vers le bas ou un panneau).

Le bot ne peut être contrôlé que par des panneaux placés sur son chemin.

Si le bot atteint d'abord un panneau, il exécutera les commandes sur le panneau. Si la première commande sur le panneau est par exemple 'turn_around', le bot tourne et revient. Dans ce cas, le bot atteint sa boîte à nouveau et s'éteint.

Si le bot atteint d'abord un obstacle, il s'arrêtera, ou s'il est disponible, exécutera les commandes suivantes du dernier panneau.

La boîte Signs Bot a un inventaire avec 6 piles pour les panneaux et 8 piles pour d'autres articles (qui sont placés/minés par le bot). Cet inventaire simule l'inventaire interne du bot. Cela signifie que vous n'aurez accès à l'inventaire que si le bot est éteint ('assis' dans sa boîte).

Il existe également les blocs suivants:
- Capteurs: Ceux-ci peuvent envoyer un signal à un actionneur s'ils sont connectés à l'actionneur.
- Actionneurs: Ceux-ci effectuent une action lorsqu'ils reçoivent un signal d'un capteur.

[signs_bot_bot_inv.png|image]

## Panneaux

Vous contrôlez la direction du bot en utilisant les panneaux "tourner à gauche" et "tourner à droite" (panneaux avec la flèche). Le bot peut monter des marches (un bloc vers le haut/bas). Mais il existe également des commandes pour déplacer le bot vers le haut et vers le bas.

Il n'est pas nécessaire de marquer un chemin de retour vers la boîte. Avec la commande 'turn_off', le bot s'éteindra et sera de retour dans sa boîte depuis n'importe quelle position. La même chose s'applique si vous éteignez le bot par le menu de la boîte. Si le bot atteint un panneau depuis la mauvaise direction (par l'arrière ou les côtés), le panneau sera ignoré. Le bot passera simplement par-dessus le panneau.

Tous les panneaux prédéfinis ont un menu avec une liste des commandes du bot. Ces panneaux ne peuvent pas être modifiés, mais vous pouvez fabriquer et programmer vos propres panneaux. Pour cela, vous devez utiliser le panneau 'command'. Ce panneau a un champ d'édition pour vos commandes et une page d'aide avec toutes les commandes disponibles. La page d'aide a un bouton de copie pour simplifier la programmation.

Il est également important de savoir pour vos propres panneaux: Après l'exécution de la dernière commande du panneau, le bot revient à son comportement par défaut et avance dans la direction prise.

Une tâche standard pour le bot est de déplacer des articles d'un coffre à un autre coffre (ou nœud avec un inventaire de type coffre). Cela peut être fait au moyen des deux panneaux 'take item' et 'add item'. Ces panneaux doivent être placés sur le dessus des nœuds de coffre.

[signs_bot_sign_left.png|image]

## Capteurs et Actionneurs

En plus des panneaux, le bot peut être contrôlé au moyen de capteurs. Les capteurs comme le Bot Sensor ont deux états: marche et arrêt. Si le Bot Sensor détecte un bot, il passera à l'état 'marche' et enverra un signal à un bloc connecté, appelé actionneur.

Les capteurs sont:

- Bot Sensor: Envoie un signal lorsqu'un robot passe
- Node Sensor: Envoie un signal lorsqu'il détecte un nœud (nouveau)
- Crop Sensor: Envoie un signal lorsque, par exemple, le blé est complètement mûr
- Bot Chest: Envoie un signal en fonction de l'état du coffre (vide, plein)

Les actionneurs sont:

- Signs Bot Box: Peut éteindre et allumer le bot
- Control Unit: Peut être utilisé pour échanger le panneau pour guider le bot

Les capteurs doivent être connectés (appairés) avec les actionneurs. C'est ce que fait l'outil "Sensor Connection Tool".

[signs_bot_sensor_crop_inv.png|image]

## Outil de Connexion de Capteur

Pour envoyer un signal d'un capteur à un actionneur, le capteur doit être connecté (appairé) avec l'actionneur. Pour connecter le capteur et l'actionneur, l'outil de connexion de capteur doit être utilisé. Il suffit de cliquer avec l'outil sur les deux blocs et le capteur sera connecté à l'actionneur. Une connexion réussie est indiquée par un bruit de ping/pong.

Avant de connecter le capteur à l'actionneur, assurez-vous que l'actionneur est dans l'état demandé. Par exemple: Si vous voulez démarrer le Bot avec un capteur, connectez le capteur à la boîte du Bot, lorsque le Bot est dans l'état 'on'. Sinon, le signal du capteur arrêtera le Bot, au lieu de le démarrer.

[signs_bot_tool.png|image]

## Inventaire

Ce qui suit s'applique à toutes les commandes qui placent des articles/objets dans l'inventaire du bot, tels que:

- `take_item <num> <slot>`
- `pickup_items <slot>`
- `trash_sign <slot>`
- `harvest <slot>`
- `dig_front <slot> <lvl>`

Si aucun emplacement ou l'emplacement 0 a été spécifié avec la commande (cas A), les 8 emplacements de l'inventaire du bot sont vérifiés l'un après l'autre. Si un emplacement a été spécifié (cas B), seul cet emplacement est vérifié. Dans les deux cas, ce qui suit s'applique:

Si l'emplacement est préconfiguré et correspond à l'article, ou si l'emplacement n'est pas configuré et est vide, ou seulement partiellement rempli avec le type d'article à ajouter, alors l'article(s) sera ajouté. Si tous les articles ne peuvent pas être ajoutés, dans le cas A, les emplacements restants sont essayés. Tout ce qui n'a pas pu être ajouté à votre inventaire retournera ou sera abandonné.

Ce qui suit s'applique à toutes les commandes utilisées pour prendre des articles dans l'inventaire du bot, comme:

- `add_item <num> <slot>`

Peu importe qu'un emplacement soit configuré ou non. Le bot prend la première pile qu'il peut trouver dans son propre inventaire et essaie de l'utiliser. Si un emplacement est spécifié, il ne prend que celui-ci, si aucun emplacement n'a été spécifié, il vérifie tous les emplacements l'un après l'autre, en commençant par l'emplacement 1 jusqu'à ce qu'il trouve quelque chose. Si le nombre trouvé est inférieur à celui demandé, il essaie de prendre le reste dans n'importe quel autre emplacement.

[signs_bot:box|image]

## Nœuds / Blocs

### Signs Bot Box

La boîte est le logement du bot. Placez la boîte et démarrez le bot au moyen du bouton 'On'. Si le mod techage est installé, le bot a besoin d'énergie électrique. Le bot quitte la boîte du côté droit. Il ne démarrera pas si cette position est bloquée.

Pour arrêter et retirer le bot, appuyez sur le bouton 'Off'. L'inventaire de la boîte simule l'inventaire du bot. Vous ne pourrez pas accéder à l'inventaire si le bot est en cours d'exécution. Le bot peut transporter jusqu'à 8 piles et 6 panneaux avec lui.

[signs_bot:box|image]

### Bot Flap

Le clapet est un bloc simple utilisé comme porte pour le bot. Placez le clapet dans n'importe quel mur, et le bot ouvrira et fermera automatiquement le clapet lorsqu'il passera à travers.

[signs_bot:bot_flap|image]

### Signs Duplicator

Le duplicateur peut être utilisé pour faire des copies de panneaux:

1. Mettez un panneau 'cmnd' à utiliser comme modèle dans l'inventaire 'Template'
2. Ajoutez un ou plusieurs 'blank signs' à l'inventaire 'Input'.
3. Prenez les copies de l'inventaire 'Output'.

Les livres écrits [default:book_written] peuvent également être utilisés comme modèle. Les panneaux déjà écrits peuvent également être utilisés comme entrée.

[signs_bot:duplicator|image]

### Bot Sensor

Le Bot Sensor détecte tout bot et envoie un signal si un bot est à proximité. La portée du capteur est d'un nœud/mètre. La direction du capteur n'a pas d'importance.

[signs_bot:bot_sensor|image]

### Node Sensor

Le capteur de nœud envoie des signaux cycliques lorsqu'il détecte que des nœuds sont apparus ou ont disparu, mais doit être configuré en conséquence. Les nœuds valides sont tous types de blocs et de plantes. La portée du capteur est de 3 nœuds/mètres dans une direction. Le capteur a un côté actif (rouge) qui doit pointer vers la zone observée.

[signs_bot:node_sensor|image]

### Crop Sensor

Le Crop Sensor envoie des signaux cycliques lorsque, par exemple, le blé est complètement mûr. La portée du capteur est d'un nœud/mètre. Le capteur a un côté actif (rouge) qui doit pointer vers la culture/champ.

[signs_bot:crop_sensor|image]

### Signs Bot Chest

Le Signs Bot Chest est un coffre spécial avec fonction de capteur. Il envoie un signal en fonction de l'état du coffre. Les états possibles sont 'vide', 'non vide', 'presque plein'.

Un cas d'utilisation typique est d'éteindre le bot lorsque le coffre est presque plein ou vide.

[signs_bot:chest|image]

### Bot Timer

Il s'agit d'un type spécial de capteur. Peut être programmé avec un temps en secondes, par exemple pour démarrer le bot de manière cyclique.

[signs_bot:timer|image]

### Bot Control Unit

La Bot Control Unit est utilisée pour guider le bot au moyen de panneaux. L'unité peut être chargée avec jusqu'à 4 panneaux différents et peut être programmée au moyen de capteurs.

Pour charger l'unité, placez un panneau sur le côté rouge de l'unité et cliquez sur l'unité. Le panneau disparaît / est déplacé vers l'inventaire de l'unité. Cela peut être répété 3 fois.

Utilisez l'outil de connexion pour connecter jusqu'à 4 capteurs avec la Bot Control Unit.

[signs_bot:changer1|image]

### Sensor Extender

Avec le Sensor Extender, les signaux des capteurs peuvent être envoyés à plus d'un actionneur. Placez un ou plusieurs extendeurs à proximité du capteur et connectez chaque extendeur avec un autre actionneur au moyen de l'outil de connexion.

[signs_bot:sensor_extender|image]

### Signal AND

Le signal est envoyé si tous les signaux d'entrée sont reçus.

[signs_bot:and1|image]

### Signal Delayer

Les signaux sont transmis avec un retard. Les signaux suivants sont mis en file d'attente. Le temps de retard peut être configuré.

[signs_bot:delayer|image]

### Sign 'farming'

Utilisé pour récolter et semer un champ de 3x3. Placez le panneau devant le champ. La graine utilisée doit être dans le premier emplacement de l'inventaire du bot. Lorsque le bot a terminé, le bot tournera et marchera en arrière.

[signs_bot:farming|image]

### Sign 'pattern'

Utilisé pour faire une copie d'un cube de 3x3x3. Placez le panneau devant le motif à copier. Utilisez le panneau de copie pour faire la copie de ce motif à un autre endroit. Le bot doit d'abord atteindre le panneau de motif, puis le panneau de copie.

Utilisé pour faire une copie d'un cube de 3x3x3. Placez le bouclier devant les blocs à copier. Utilisez le panneau de copie pour faire la copie de ces blocs à un autre endroit. Le bot doit d'abord traiter le panneau "pattern", seulement alors le bot peut être dirigé vers le panneau de copie.

[signs_bot:pattern|image]

### Sign 'copy3x3x3'

Utilisé pour faire une copie d'un cube de 3x3x3. Placez le panneau devant l'endroit où vous voulez que la copie soit faite. Voir aussi le panneau "pattern".

[signs_bot:copy3x3x3|image]

### Sign 'flowers'

Utilisé pour couper des fleurs sur un champ de 3x3. Placez le panneau devant le champ. Lorsque c'est terminé, le bot tourne.

[signs_bot:flowers|image]

### Sign 'aspen'

Utilisé pour récolter un tronc de tremble ou de pin

- Placez le panneau devant l'arbre.
- Placez un coffre à droite du panneau.
- Mettez une pile de terre (10 articles min.) dans le coffre.
- Précconfigurez l'emplacement 1 de l'inventaire du bot avec de la terre
- Précconfigurez l'emplacement 2 de l'inventaire du bot avec des jeunes plants

[signs_bot:aspen|image]

### Sign 'command'

Le panneau 'command' peut être programmé par le joueur. Placez le panneau devant vous et utilisez le menu du nœud pour programmer votre séquence de commandes du bot. Le menu a un champ d'édition pour vos commandes et une page d'aide avec toutes les commandes disponibles. La page d'aide a un bouton de copie pour simplifier la programmation.

[signs_bot:sign_cmnd|image]

### Sign "turn right"

Le Bot tourne à droite lorsqu'il détecte ce panneau devant lui.

[signs_bot:sign_right|image]

### Sign "turn left"

Le Bot tourne à gauche lorsqu'il détecte ce panneau devant lui.

[signs_bot:sign_left|image]

### Sign "take item"

Le Bot prend des articles dans un coffre devant lui et tourne ensuite. Ce panneau doit être placé sur le dessus du coffre.

[signs_bot:sign_take|image]

### Sign "add item"

Le Bot met des articles dans un coffre devant lui et tourne ensuite. Ce panneau doit être placé sur le dessus du coffre.

[signs_bot:sign_add|image]

### Sign "stop"

Le Bot s'arrêtera devant ce panneau jusqu'à ce que le panneau soit retiré ou que le bot soit éteint.

[signs_bot:sign_stop|image]

### Sign "add to cart" (minecart)

Le Bot met des articles dans un wagonnet devant lui, pousse le wagonnet et tourne ensuite. Ce panneau doit être placé sur le dessus du rail à la position de fin du wagonnet.

[signs_bot:sign_add_cart|image]

### Sign "take from cart" (minecart)

Le Bot prend des articles d'un wagonnet devant lui, pousse le wagonnet et tourne ensuite. Ce panneau doit être placé sur le dessus du rail à la position de fin du wagonnet.

[signs_bot:sign_take_cart|image]

### Sign 'take water' (xdecor)

Utilisé pour prendre de l'eau dans un seau. Placez le panneau sur une rive, devant le plan d'eau calme.

Articles dans les emplacements:

1 - seau vide

Le résultat est un seau avec de l'eau dans l'emplacement d'inventaire sélectionné. Lorsque c'est terminé, le bot tourne.

[signs_bot:water|image]

### Sign 'cook soup' (xdecor)

Utilisé pour cuisiner une soupe de légumes dans un chaudron. Le chaudron doit être vide et situé au-dessus d'un matériau inflammable. Placez le panneau devant le chaudron avec un espace de champ, pour empêcher le panneau en bois de prendre feu.

Articles dans les emplacements:

1 - seau d'eau"
2 - légume #1 (par exemple, tomate)
3 - légume #2 (par exemple, carotte)
4 - bol vide (des mods farming ou xdecor)

Le résultat est un bol de soupe de légumes dans l'emplacement d'inventaire sélectionné. Lorsque c'est terminé, le bot tourne.

[signs_bot:soup|image]

## Commandes du Bot

Les commandes sont également toutes décrites comme aide dans le nœud "Sign command". Tous les blocs ou panneaux qui sont définis sont pris de l'inventaire du bot. Tout bloc ou panneau retiré sera ajouté à l'inventaire du bot. `<slot>` est toujours la pile d'inventaire interne du bot (1..8).

    move <steps>              - avancer d'un ou plusieurs pas
    cond_move                 - aller jusqu'à l'obstacle ou le panneau le plus proche
    turn_left                 - tourner à gauche
    turn_right                - tourner à droite
    turn_around               - faire demi-tour
    backward                  - reculer d'un pas
    turn_off                  - éteindre le robot / retour à la boîte
    pause <sec>               - attendre une ou plusieurs secondes
    move_up                   - monter (maximum 2 fois)
    move_down                 - descendre
    fall_down                 - tomber dans un trou/abîme (jusqu'à 10 blocs)
    take_item <num> <slot>    - prendre un ou plusieurs articles d'une boîte
    add_item <num> <slot>     - mettre un ou plusieurs articles dans une boîte
    add_fuel <num> <slot>     - mettre du carburant dans un four
    place_front <slot> <lvl>  - placer le bloc devant le bot
    place_left <slot> <lvl>   - placer le bloc à gauche du bot
    place_right <slot> <lvl>  - placer le bloc à droite du bot
    place_below <slot>        - soulever le robot et mettre le bloc sous le robot
    place_above <slot>        - placer le bloc au-dessus du robot
    dig_front <slot> <lvl>    - enlever le bloc devant le robot
    dig_left <slot> <lvl>     - enlever le bloc à gauche
    dig_right <slot> <lvl>    - enlever le bloc à droite
    dig_below <slot>          - enlever le bloc sous le robot
    dig_above <slot>          - enlever le bloc au-dessus du robot
    rotate_item <lvl> <steps> - faire tourner un bloc devant le robot
    set_param2 <lvl> <param2> - définir param2 du bloc devant le robot
    place_sign <slot>         - placer un panneau
    place_sign_behind <slot>  - placer un panneau derrière le bot
    dig_sign <slot>           - enlever le panneau
    trash_sign <slot>         - Enlever le panneau, effacer les données et ajouter à l'inventaire d'objets
    stop                      - Le bot s'arrête jusqu'à ce que le bouclier soit retiré
    pickup_items <slot>       - ramasser des objets (dans un champ de 3x3)
    drop_items <num> <slot>   - déposer des objets
    harvest                   - récolter un champ de 3x3 (agriculture)
    cutting                   - couper des fleurs dans un champ de 3x3
    sow_seed <slot>           - semer/planter un champ de 3x3
    plant_sapling <slot>      - planter un jeune plant devant le robot
    pattern                   - sauvegarder les propriétés des blocs derrière le panneau (cube de 3x3x3) comme modèle
    copy <size>               - faire une copie de 3x3x3 du modèle stocké
    punch_cart                - pousser un wagonnet
    add_compost <slot>        - Mettre 2 feuilles dans le tonneau à compost
    take_compost <slot>       - Prendre un article de compost du tonneau
    print <text>              - Message de chat de sortie à des fins de débogage
    take_water <slot>         - Prendre de l'eau avec un seau vide
    fill_cauldron <slot>      - Remplir le chaudron xdecor pour une soupe
    take_soup <slot>          - Prendre de la soupe bouillante dans un bol vide du chaudron
    flame_on                  - Allumer le feu
    flame_off                 - Éteindre le feu

[signs_bot_bot_inv.png|image]

### Commandes spécifiques à Techage

    ignite                            - Allumer l'allume-charbon de techage
    low_batt <percent>                - Éteindre le bot si la puissance de la batterie est inférieure à la
                                        valeur donnée en pourcentage (1..99)
    jump_low_batt <percent> <label>   - Sauter à <label> si la puissance de la batterie est inférieure à la
                                        valeur donnée en pourcentage (1..99)
                                        (voir "Commandes de contrôle de flux")
    send_cmnd <receiver> <command>    - Envoyer une commande techage à un nœud donné.
                                        Le récepteur est adressé par le numéro de nœud techage.
                                        Pour les commandes avec deux mots ou plus,
                                        utilisez le caractère '*' à la place des espaces, par exemple :
                                        send_cmnd 3465 pull*default:dirt*2

[signs_bot_bot_inv.png|image]

### Commandes de contrôle de flux

    -- commande de saut, <label> est un mot des caractères a-z ou A-Z
    jump <label>

    -- étiquette de saut / début d'une fonction
    <label>:

    -- retour d'une fonction
    return

    -- début d'un bloc de boucle, <num> est un nombre 1..999
    repeat <num>

    -- fin d'un bloc de boucle
    end

    -- appel d'une fonction (avec retour via la commande 'return')
    call <label>

[signs_bot_bot_inv.png|image]

### Autres commandes de saut

    -- Vérifier s'il y a <num> articles dans le nœud de type coffre.
    -- Si ce n'est pas le cas, sauter à <label>.
    -- <slot> est l'emplacement de l'inventaire du bot (1..8) pour
    -- spécifier l'article, ou 0 pour n'importe quel article.
    jump_check_item <num> <slot> <label>

    -- Voir "Commandes spécifiques à Techage"
    jump_low_batt <percent> <label>

[signs_bot_bot_inv.png|image]

### Exemples de contrôle de flux

#### Exemple avec une fonction au début:

    -- sauter à l'étiquette 'main'
    jump main

    -- point de départ de la fonction avec le nom 'foo'
    foo:
      cmnd ...
      cmnd ...
    -- fin de 'foo'. Retour en arrière
    return

    -- programme principal
    main:
      cmnd ...
      -- répéter toutes les commandes jusqu'à 'end' 10 fois
      repeat 10
        cmnd ...
        -- appeler la sous-fonction 'foo'
        call foo
        cmnd ...
      -- fin de la boucle 'repeat'
      end
    -- fin du programme
    exit

#### Exemple avec une fonction à la fin:

    cmnd ...
    -- répéter toutes les commandes jusqu'à 'end' 10 fois
    repeat 10
      cmnd ...
      -- appeler la sous-fonction 'foo'
      call foo
      cmnd ...
    -- fin de la boucle 'repeat'
    end
    -- fin du programme
    exit

    -- point de départ de la fonction avec le nom 'foo'
    foo:
      cmnd ...
      cmnd ...
    -- fin de 'foo'. Retour en arrière
    return
