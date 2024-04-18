local SConfig = {
    coords = { -- Spawn Coords
        vector4(-1593.1531, -839.8100, 9.9995, 144.1503),
        vector4(-3029.1404, 523.6277, 8.7326, 2.8451),
        vector4(-3420.0347, 967.4623, 8.4125, 85.0193),
        vector4(-2213.6052, 4244.0840, 47.2654, 304.0783),
        vector4(-1579.1801, 5163.4849, 18.9016, 336.1273),
        vector4(-485.1336, 6262.7153, 12.9217, 243.2977),
        vector4(1533.1874, 6326.5337, 24.5756, 234.5645),
        vector4(2428.3469, 4982.5156, 46.0837, 320.7927),
        vector4(2412.2268, 3044.9756, 48.6693, 179.1379),
        vector4(1972.5884, 3039.7488, 49.0422, 15.5903),
        vector4(1572.7406, 2202.7869, 79.7926, 94.5650),
        vector4(1398.6371, 2161.6123, 98.7005, 85.4274),
        vector4(816.4487, 2187.0129, 52.9283, 10.1483),
        vector4(558.5602, 2660.5852, 42.1744, 325.0291),
        vector4(172.2218, 2241.3145, 91.4629, 276.3651),
        vector4(307.4724, 365.9445, 108.1553, 243.2169),
        vector4(375.9280, 256.8765, 103.1483, 251.9585),
        vector4(231.5727, 121.5416, 102.8220, 85.1828),
        vector4(221.9000, -33.8921, 69.7866, 225.1847),
        vector4(201.1077, -929.9485, 30.4721, 316.2898),
        vector4(472.8318, -1231.7279, 29.9826, 94.0829),
        vector4(429.2382, -1531.9899, 30.0427, 132.5855),
        vector4(461.7122, -1693.8717, 30.5574, 105.6570),
        vector4(215.8622, -2187.7834, 8.0270, 85.1051),
        vector4(-1161.4932, -1741.5333, 5.4425, 147.3773),
        vector4(-1654.2954, -224.6200, 57.5151, 146.9791),
        vector4(-787.8097, 584.0997, 127.5014, 9.9741),
        vector4(-54.9871, 1873.2302, 196.6130, 44.7817)
    },
    --Diferents peds to spawn
    ped = { `a_f_m_prolhost_01`, `a_f_m_downtown_01`, `a_f_m_skidrow_01`, `a_m_m_eastsa_01`, `a_m_m_hillbilly_02`, `a_m_m_rurmeth_01`, `a_m_m_skidrow_01`, `a_m_m_trampbeac_01`, `a_m_o_acult_02`, `a_m_o_beach_01`, `a_m_o_soucent_02`, `a_m_y_methhead_01` },
    -----#####BULLETS#####-----
    --[[
     {
            title = MENU TITLE,
            description = "MENU DESCRIPTION,
            args = { hash = HASH OF THE ITEM, precio = PRICE, cantidad = AMOUNT }, -- args = { hash, price, amount },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
    ]]
    balas = {
        {
            title = '.22 Long Rifle',
            description = "Price $5000",
            args = { hash = "ammo-22", precio = 5000, cantidad = 30 }, -- args = { hash, price, amount },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '.38 LC',
            description = "Price $5000",
            args = { hash = "ammo-38", precio = 5000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '.44 Magnum',
            description = "Price $5000",
            args = { hash = "ammo-44", precio = 5000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '.45 ACP',
            description = "Price $5000",
            args = { hash = "ammo-45", precio = 5000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '.50 AE',
            description = "Price $5000",
            args = { hash = "ammo-50", precio = 5000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '9mm',
            description = "Price $4500",
            args = { hash = 'ammo-9', precio = 4500, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '.50 BMG',
            description = "Price $4500",
            args = { hash = 'ammo-heavysniper', precio = 4500, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '5.56x45',
            description = "Price $6000",
            args = { hash = 'ammo-rifle', precio = 6000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '7.62x39',
            description = "Price $6000",
            args = { hash = 'ammo-rifle2', precio = 6000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '12 Gauge',
            description = "Price $4500",
            args = { hash = 'ammo-shotgun', precio = 4500, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = '7.62x51',
            description = "Price $5000",
            args = { hash = 'ammo-sniper', precio = 5000, cantidad = 30 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
    },


    -----#####WEAPONS#####-----
    armas = {
        {
            title = 'Tactical SMG',
            description = "Price $60000",
            args = { hash = 'WEAPON_TECPISTOL', precio = 60000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
        {
            title = 'Advanced Rifle',
            description = "Price $60000",

            args = { hash = 'WEAPON_ADVANCEDRIFLE', precio = 60000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'AP Pistol',
            description = "Price $45000",
            args = { hash = 'WEAPON_APPISTOL', precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Assault Rifle',
            description = "Price $60000",
            args = { hash = 'WEAPON_ASSAULTRIFLE', precio = 60000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Assault Rifle MK2',
            description = "Price $60000",
            args = { hash = 'WEAPON_ASSAULTRIFLE_MK2', precio = 60000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Assault Shotgun',
            description = "Price $45000",
            args = { hash = 'WEAPON_ASSAULTSHOTGUN', precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
        {
            title = 'Assault SMG',
            description = "Price $45000",
            args = { hash = 'WEAPON_ASSAULTSMG', precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
        {
            title = 'Bat',
            description = "Price $10000",
            args = { hash = "WEAPON_BAT", precio = 10000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Battle Axe',
            description = "Price $40000",
            args = { hash = 'WEAPON_BATTLEAXE', precio = 40000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Bottle',
            description = "Price $50000",
            args = { hash = 'WEAPON_BOTTLE', precio = 50000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'BZ Gas',
            description = "Price $8000",
            args = { hash = "WEAPON_BZGAS", precio = 8000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Ceramic Pistol',
            description = "Price $80000",
            args = { hash = 'WEAPON_CERAMICPISTOL', precio = 80000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'WM 29 Pistol',
            description = "Price $90000",
            args = { hash = 'WEAPON_PISTOLXM3', precio = 90000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Combat PDW',
            description = "Price $500000",
            args = { hash = 'WEAPON_COMBATPDW', precio = 500000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Combat Pistol',
            description = "Price $110000",
            args = { hash = 'WEAPON_COMBATPISTOL', precio = 110000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Crowbar',
            description = "Price $15000",
            args = { hash = "WEAPON_CROWBAR", precio = 15000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Dagger',
            description = "Price $25000",
            args = { hash = "WEAPON_DAGGER", precio = 25000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Gusenberg',
            description = "Price $4500000",
            args = { hash = 'WEAPON_GUSENBERG', precio = 4500000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Hatchet',
            description = "Price $45000",
            args = { hash = "WEAPON_HATCHET", precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Heavy Pistol',
            description = "Price $200000",
            args = { hash = 'WEAPON_HEAVYPISTOL', precio = 200000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Knife',
            description = "Price $15000",
            args = { hash = "WEAPON_KNIFE", precio = 15000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Knuckle Dusters',
            description = "Price $50000",
            args = { hash = "WEAPON_KNUCKLE", precio = 50000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Machete',
            description = "Price $90000",
            args = { hash = "WEAPON_MACHETE", precio = 90000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Micro SMG',
            description = "Price $45000",
            args = { hash = 'WEAPON_MICROSMG', precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Pistol',
            description = "Price $100000",
            args = { hash = 'WEAPON_PISTOL', precio = 100000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'Pistol .50',
            description = "Price $115000",
            args = { hash = 'WEAPON_PISTOL50', precio = 115000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },


        {
            title = 'SMG',
            description = "Price $750000",
            args = { hash = 'WEAPON_SMG', precio = 750000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },


        {
            title = 'Switchblade',
            description = "Price $45000",
            args = { hash = "WEAPON_SWITCHBLADE", precio = 45000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },

        {
            title = 'electronickit',
            description = "Price $15000",
            args = { hash = "electronickit", precio = 15000, cantidad = 1 },
            serverEvent = "fx-ilegal::server::compraDeArma"
        },
    },
}

return SConfig
