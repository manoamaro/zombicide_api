# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


# Skills
Skill.destroy_all
Skill.create!(name: '+1 Action', description: 'The Survivor has an extra Action he may use as he pleases.')
Skill.create!(name: '+1 Damage: [type]', description: 'The Survivor gets a +1 Damage bonus with the specified type of Action (Melee or Ranged).')
Skill.create!(name: '+1 to dice roll: Combat', description: 'The Survivor adds 1 to the result of each die he rolls on a Combat Action (Melee or Ranged). The maximum result is always 6.')
Skill.create!(name: '+1 to dice roll: Melee', description: 'The Survivor adds 1 to the result of each die he rolls in Melee Combat. The maximum result is always 6.')
Skill.create!(name: '+1 to dice roll: Ranged', description: 'The Survivor adds 1 to the result of each die he rolls in Ranged Combat. The maximum result is always 6.')
Skill.create!(name: '+1 die: Combat', description: 'The Survivor’s weapons roll an extra die in Combat (Melee or Ranged). Dual weapons gain a die each, for a total of +2 dice per Dual Combat Action.')
Skill.create!(name: '+1 die: Melee', description: 'The Survivor’s Melee weapons rolls an extra die in Combat. Dual melee weapons gain a die each, for a total of +2 dice per Dual Melee Combat Action.')
Skill.create!(name: '+1 die: Ranged', description: 'The Survivor’s Ranged weapons roll an extra die in Combat. Dual ranged weapons gain a die each, for a total of +2 dice per Dual Ranged Combat Action.')
Skill.create!(name: '+1 free Combat Action', description: 'The Survivor has one free extra Combat Action. This Action may only be used for Melee or Ranged Combat.')
Skill.create!(name: '+1 free Move Action', description: 'The Survivor has one free extra Move Action. This Action may only be used as a Move Action.')
Skill.create!(name: '+1 free Search Action', description: 'The Survivor has one free extra Search Action. This Action may only be used to Search and the Survivor can still only Search once per turn.')
Skill.create!(name: '+1 max Range', description: 'The Survivor’s Ranged weapons’ maximum Range is increased by 1.')
Skill.create!(name: '+1 Zone per move', description: 'The Survivor can move through one extra Zone each time he performs a Move Action. This Skill stacks with other effects benefitting Move Actions.')
Skill.create!(name: '1 re-roll per turn', description: 'Once per turn, you can re-roll all the dice related to the resolution of an Action made by the Survivor. The new result takes the place of the previous one. This Skill stacks with the effects of Equipment that allow re-rolls.')
Skill.create!(name: '2 cocktails are better than 1', description: 'The Survivor gets two Molotov cards instead of one when he create!s a Molotov.')
Skill.create!(name: '2 Zones per move Action', description: 'When the Survivor spends one Action to Move, he can move one or two Zones instead of one.')
Skill.create!(name: 'Ambidextrous', description: 'The Survivor treats all Melee and Ranged weapons as if they had the Dual symbol .')
Skill.create!(name: 'Born leader', description: 'During the Survivor’s turn, he may give one free Action to another Survivor, to use as he pleases. This Action must be used during the recipient’s next turn or it is lost.')
Skill.create!(name: 'Destiny', description: 'The Survivor can use this Skill once per turn when he reveals an Equipment card he drew. Discard that card and draw another Equipment card.')
Skill.create!(name: 'Gunslinger', description: 'The Survivor treats all Ranged weapons as if they had the Dual symbol .')
Skill.create!(name: 'Hoard', description: 'The Survivor can carry one extra Equipment card in reserve.')
Skill.create!(name: 'Hold your nose', description: 'This Skill can be used once per turn. The Survivor gets a free Search Action in the Zone if he has eliminated a Zombie (even outside a building) the very same turn. This Action may only be used to Search and the Survivor can still only Search once per turn.')
Skill.create!(name: 'Is that all you’ve got?', description: 'You can use this Skill any time the Survivor is about to get Wounded cards. Discard one Equipment card in your Survivor’s inventory for each Wound he’s about to receive. Negate a Wounded card per discarded Equipment card.')
Skill.create!(name: 'Lock it down', description: 'At the cost of one Action, the Survivor can close an open door. Opening it again later does not trigger a new Zombie Spawn.')
Skill.create!(name: 'Loud', description: 'Once per turn, the Survivor can make a huge amount of noise! Until this Survivor’s next turn, the Zone he used this Skill in is considered to have the highest number of Noise tokens on the entire map. If different Survivors have this Skill, only the last one who used it applies the effects.')
Skill.create!(name: 'Lucky', description: 'The Survivor can re-roll once all the dice of each Action he takes. The new result takes the place of the previous one. This Skill stacks with the effects of other Skills (“1 re-roll per turn”, for example) and Equipment that allows re-rolls.')
Skill.create!(name: 'Matching set!', description: 'When a Survivor performs a Search Action and draws a weapon card with the Dual symbol, he can immediately take a second card of the same type from the Equipment deck. Shuffle the deck afterward.')
Skill.create!(name: 'Medic', description: 'Once per turn, the Survivor can freely remove one Wounded card from a Survivor in the same Zone. He may also heal himself.')
Skill.create!(name: 'Ninja', description: 'The Survivor makes no Noise. At all. His miniature does not count as a Noise token, and his use of Equipment or weapons produces no Noise tokens either! The Survivor may choose not to use this Skill at any time, if he wishes to be noisy.')
Skill.create!(name: 'Slippery', description: 'The Survivor does not spend extra Actions when he performs a Move Action through a Zone where there are Zombies.')
Skill.create!(name: 'Sniper', description: 'The Survivor may freely choose the targets of all his Ranged Combat Actions.')
Skill.create!(name: 'Starts with a [Equipment]', description: 'The Survivor begins the game with the indicated Equipment; its card is automatically assigned to him before the beginning of the game.')
Skill.create!(name: 'Swordmaster', description: 'The Survivor treats all Melee weapons as if they had the Dual symbol .')
Skill.create!(name: 'Tough', description: 'The Survivor ignores the first Attack he receives from a single Zombie every Zombies’ Phase.')
Skill.create!(name: 'Trick shot', description: 'When the Survivor is equipped with Dual Ranged weapons, he can aim at targets in different Zones with each weapon in the same Action.')


# Season 1
Card.destroy_all
Game.destroy_all
Survivor.destroy_all

season_1 = Game.create!(name: 'Zombicide Season 1', is_playable: true, is_expansion: false)
# EQUIPMENT CARDS
season_1.equipment_cards << Card.create!(name: 'Bag of Rice', card_type: :equipment,
            image: File.open('vendor/equipment_cards/season_1/bag-of-rice.jpg'))
season_1.equipment_cards << Card.create!(name: 'Baseball Bat', card_type: :equipment,
            description: { range: 0, dices: 1, target: 3, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/baseball-bat.jpg'))
season_1.equipment_cards << Card.create!(name: 'Canned Food', card_type: :equipment,
            description: { range: 0, dices: 1, target: 3, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/canned-food.jpg'))
season_1.equipment_cards << Card.create!(name: 'Chainsaw', card_type: :equipment,
            description: { range: 0, dices: 5, target: 5, damage: 2 },
            image: File.open('vendor/equipment_cards/season_1/chainsaw.jpg'))
season_1.equipment_cards << Card.create!(name: 'Crowbar', card_type: :equipment,
            description: { range: 0, dices: 1, target: 4, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/crowbar.jpg'))
season_1.equipment_cards << Card.create!(name: 'Evil Twins', card_type: :equipment,
            description: { range: 1, dices: 2, target: 4, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/evil-twins.jpg'))
season_1.equipment_cards << Card.create!(name: 'Fire Axe', card_type: :equipment,
            description: { range: 0, dices: 1, target: 4, damage: 2 },
            image: File.open('vendor/equipment_cards/season_1/fire-axe.jpg'))
season_1.equipment_cards << Card.create!(name: 'Flashlight', card_type: :equipment,
            description: 'Pick one extra card when searching. This card is effective even in reserve',
            image: File.open('vendor/equipment_cards/season_1/flash-light.jpg'))
season_1.equipment_cards << Card.create!(name: 'Gasoline', card_type: :equipment,
            description: 'Combine with glass bottles to get a molotov',
            image: File.open('vendor/equipment_cards/season_1/gasoline.jpg'))
season_1.equipment_cards << Card.create!(name: 'Glass Bottle', card_type: :equipment,
            description: 'Combine with gasoline to get a molotov',
            image: File.open('vendor/equipment_cards/season_1/glass-bottle.jpg'))
season_1.equipment_cards << Card.create!(name: 'Goalie Mask', card_type: :equipment,
            description: "Damn it's cool!. Discard goalie mask: prevent 1 wound inflicted to the wearer",
            image: File.open('vendor/equipment_cards/season_1/goalie-mask.jpg'))
season_1.equipment_cards << Card.create!(name: 'Katana', card_type: :equipment,
            description: { range: 0, dices: 2, target: 4, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/katana.jpg'))
season_1.equipment_cards << Card.create!(name: "Ma's shotgun", card_type: :equipment,
            description: { range: 1, dices: 2, target: 3, damage: 2 },
            image: File.open("vendor/equipment_cards/season_1/ma's-shotgun.jpg"))
season_1.equipment_cards << Card.create!(name: 'Machete', card_type: :equipment,
            description: { range: 0, dices: 1, target: 4, damage: 2 },
            image: File.open('vendor/equipment_cards/season_1/machete.jpg'))
season_1.equipment_cards << Card.create!(name: 'Pan', card_type: :equipment,
            description: { range: 0, dices: 1, target: 6, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/pan.jpg'))
season_1.equipment_cards << Card.create!(name: 'Pistol', card_type: :equipment,
            description: { range: 1, dices: 1, target: 4, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/pistol.jpg'))
season_1.equipment_cards << Card.create!(name: 'Plenty of Ammo', card_type: :equipment,
            description: 'As long at this card is in your inventory you may re-roll all ranged actions once with the sawed-offs(s), shotgun or ma\'s shotgun. The new result takes place of the previous one.',
            image: File.open('vendor/equipment_cards/season_1/plenty-of-ammo-shotgun.jpg'))
season_1.equipment_cards << Card.create!(name: 'Plenty of Ammo', card_type: :equipment,
            description: 'As long at this card is in your inventory you may re-roll all ranged actions once with the pistol(s), evil twins or rifle. The new result takes place of the previous one.',
            image: File.open('vendor/equipment_cards/season_1/plenty-of-ammo.jpg'))
season_1.equipment_cards << Card.create!(name: 'Rifle', card_type: :equipment,
            description: { range: 3, dices: 1, target: 3, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/rifle.jpg'))
season_1.equipment_cards << Card.create!(name: 'Sawed off', card_type: :equipment,
            description: { range: 1, dices: 2, target: 3, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/sawed-off.jpg'))
season_1.equipment_cards << Card.create!(name: 'Scope', card_type: :equipment,
            description: 'Combine with rifle to get a sniper rifle. Get sniper skill for all ranged actions done with a sniper rifle (the survivor chooses freely the targets)',
            image: File.open('vendor/equipment_cards/season_1/scope.jpg'))
season_1.equipment_cards << Card.create!(name: 'Shotgun', card_type: :equipment,
            description: { range: 1, dices: 2, target: 4, damage: 2 },
            image: File.open('vendor/equipment_cards/season_1/shotgun.jpg'))
season_1.equipment_cards << Card.create!(name: 'Sub Mg', card_type: :equipment,
            description: { range: 1, dices: 3, target: 5, damage: 1 },
            image: File.open('vendor/equipment_cards/season_1/sub-mg.jpg'))
season_1.equipment_cards << Card.create!(name: 'Water', card_type: :equipment,
            description: nil,
            image: File.open('vendor/equipment_cards/season_1/water.jpg'))


season_1.extra_cards << Card.create!(name: 'Molotov', card_type: :extra,
            description: { range: 1, dices: 0, target: 0, damage: 0 },
            image: File.open('vendor/equipment_cards/season_1/molotov.jpg'))


season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/1.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/2.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/3.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/4.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/5.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/6.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/7.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/8.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/9.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/10.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/11.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/12.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/13.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/14.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/15.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/16.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/17.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/18.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/19.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/20.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/21.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/22.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/23.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/24.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/25.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/26.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/27.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/28.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/29.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/30.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/31.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/32.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/33.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/34.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/35.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/36.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/37.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/38.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/39.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/40.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/41.jpg'))
season_1.zombie_cards << Card.create!(name: 'Spawn', card_type: :zombie,
            description: nil,
            image: File.open('vendor/spawn_cards/season_1/42.jpg'))
