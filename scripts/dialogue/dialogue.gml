function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0,0,0,obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

db = "Dapper Bulldog";
b = "Byte";

char_colors = {
    "Congrats": c_yellow,
    "Tutorial": c_red,
    "Dapper Bulldog": c_green,
    "Byte": c_red
}

welcome_dialog = [
{
    name: db,
    msg: "You're here, Byte."
},
{
    name: db, 
    msg: "I know you weren't expecting me, but I've got some bad news."
},
{
    name: db, 
    msg: "You can't enter the MLC. Not this year."
},
{
    name: db, 
    msg: "I peeked the window earlier and the students seem a bit strange."
},
{
    name: db, 
    msg: "Moment I saw someone walk in, they had him surrounded."
},
{
    name: db, 
    msg: "I saw him turn into a zombie."
},
{
    name: db, 
    msg: "Yup, a zombie. It's too dangerous to participate in the hackathon this year."
},
{
    name: db, 
    msg: "I recommend you stop now."
},
{
    name: db, 
    msg: "..."
},
{
    name: db, 
    msg: "You can stop by quitting the game. Pressing the X on that window, you know how it's done."
},
{
    name: db, 
    msg: "......."
},
{
    name: db, 
    msg: "You're still here? Fine."
},
{
    name: db, 
    msg: "If you really want to investigate, don't say I didn't warn you."
},
{
    name: db, 
    msg: "Press SPACEBAR to attack if you encounter them."
},
/*{
    name: db, 
    msg: "If any of them come too close, hold LSHIFT while moving to run."
},*/
{
    name: db, 
    msg: "Press SPACEBAR in front of that door to enter the building."
},
{
    name: db,
    msg: "Good luck."
}
]


welcome_2 = [
{
    name: db, 
    msg: "Press SPACEBAR to attack if you encounter them."
},
/*{
    name: db, 
    msg: "If any of them come too close, hold LSHIFT while moving to run."
},*/
]

r2_dia = [
{
    name: b, 
    msg: "That zombie looks different from the others."
}, 
{
    name: b,
    msg: "It'll probably be harder to kill."
}
]

end_start = [
{
    name: b,
    msg: "Sir! What are you doing here?"
}, 
{
    name: b,
    msg: "I'll save you quickly!"
}
]

ending = [
{
    name: db, 
    msg: "It's you. I nearly died if you didn't save me."
},
{
    name: b,
    msg: "I'm glad that I made it in time."
},
{
    name: b,
    msg: "But how are you here already? I saw you at the entrance just a few moments ago."
},
{
    name: b,
    msg: "And didn't you say that it was dangerous?"
},
{
    name: db,
    msg: "..."
},
{
    name: db,
    msg: "None of your business, Byte."
},
{
    name: db,
    msg: "Anyway, you've done some good work today."
},
{
    name: db,
    msg: "I found out what happened while observing you fight them."
},
{
    name: b,
    msg: "You were watching me?"
},
{
    name: db,
    msg: "Yes."
},
{
    name: db,
    msg: "One of the teams decided to use biohazards in their projects."
},
{
    name: db,
    msg: "It ended up contaminating the whole building."
},
{
    name: db,
    msg: "Seriously, they're getting crazier and crazier with their projects every year."
},
{
    name: db,
    msg: "Why on earth biohazards should be used for a hackathon... What a headache."
},
{
    name: db,
    msg: "Thanks to you cleaning the zombies up, I managed to safely get rid of the contaminant."
},
{
    name: db,
    msg: "But it looks like this year's hackathon is... over."
},
{
    name: db,
    msg: "If I were the judges, I would disqualify the team that caused this mess."
},
{
    name: db,
    msg: "But those zombies you just cut down... I believe they were the judges."
},
{
    name: db,
    msg: "I guess we'll never know the results."
},
{
    name: db,
    msg: "Anyway... See you next year, Byte."
},
{
    name: "---",
    msg: "THE END."
},
{
    name: "---",
    msg: "Thank you for playing this short game."
},
{
    name: "---",
    msg: "Game window will close."
},

]
r5_dia = [
{
    name: b, 
    msg: "That one looks really tough."
}, 
{
    name: b,
    msg: "I should be strong enough to handle it."
}
]
not_cleared = [
{
    name: b,    
    msg: "There are still some zombies left."
}

]


r1_done = [
{
    name: b,
    msg: "Cleared the room. I should go to the right."
}
]