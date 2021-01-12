/* Copyright (C) 2020 Yusuf Usta.

Licensed under the  GPL-3.0 License;
you may not use this file except in compliance with the License.

WhatsAsena - Yusuf Usta
*/

const Asena = require('../events');
const {MessageType} = require('@adiwajshing/baileys');
const {spawnSync} = require('child_process');
const Config = require('../config');

const Language = require('../language');
const Lang = Language.getString('system_stats');

Asena.addCommand({pattern: 'alive', fromMe: false, desc: Lang.ALIVE_DESC}, (async (message, match) => {
    await message.sendMessage(
        '```Hehe I em elaiv.🌚```\n\n```Join Me:``` ```https://chat.whatsapp.com/BuQWwBFW26sHVyoMEi2Gl2```' , MessageType.text
    );
}));

Asena.addCommand({pattern: 'version', fromMe: false, desc: Lang.ALIVE_DESC}, (async (message, match) => {
    await message.sendMessage(
        '```Version```\n\n```Chandran ``` ```'+Config.VERSION+'```\n\n\n```Thankyou NTC: https://www.youtube.com/channel/UCBrRubxvDBLByPe_p86zvhQ``` ' , MessageType.text
    );
}));

Asena.addCommand({pattern: 'sysd', fromMe: true, desc: Lang.SYSD_DESC}, (async (message, match) => {
    const child = spawnSync('neofetch', ['--stdout']).stdout.toString('utf-8')
    await message.sendMessage(
        '```' + child + '```', MessageType.text
    );
}));

Asena.addCommand({pattern: 'tossacoin', fromMe: false, desc: 'To Toss a Coin.', usage: '.coin'}, (async (message, match) => {
    var result = ["heads🌚", "tails🌑"];
    var coinface = result[Math.floor(Math.random()*result.length)];
    await message.sendMessage(
       "```Hehe it's ```"+'```'+coinface+'```' , MessageType.text
    );
}));

Asena.addCommand({pattern: 'today', fromMe: false, desc: 'Today.', usage: '.today'}, (async (message, match) => {
    await message.sendMessage(
       "```Heppy Berthdey Aadhi!🌚```" , MessageType.text
    );
}));
