function run(msg, matches)

--local receiver = get_receiver(msg)
--local hash = 'typing:'..receiver
	
--if redis:get(hash) and is_momod(msg) then
send_typing(get_receiver(msg), ok_cb, false)
--end

end
return {
patterns = {
--"^(.*)$",
-- BanHammer
    "^([Ss][Uu][Pp][Ee][Rr][Bb][Aa][Nn]) (.*)$",
    "^([Ss][Uu][Pp][Ee][Rr][Bb][Aa][Nn])$",
    
    "^([Bb][Aa][Nn][Ll][Ii][Ss][Tt]) (.*)$",
    "^([Bb][Aa][Nn][Ll][Ii][Ss][Tt])$",
    "^([Ss][Uu][Pp][Ee][Rr][Bb][Aa][Nn][Ll][Ii][Ss][Tt])$",
    
    "^([Kk]ick)$",
    "^([Kk][Ii][Cc][Kk]) (.*)$",
    
    "^([Bb][Aa][Nn])$",
    "^([Bb][Aa][Nn]) (.*)$",
    
    "^([Uu][Nn][Bb][Aa][Nn]) (.*)$",
    "^([Uu][Nn][Bb][Aa][Nn])$",
    
    "^([Uu][Nn][Ss][Uu][Pp][Ee][Rr][Bb][Aa][Nn]) (.*)$",
    "^([Uu][Nn][Ss][Uu][Pp][Ee][Rr][Bb][Aa][Nn])$",
-- BanHammer

-- InAdmin
	"^(pm) (%d+) (.*)$",
	"^(import) (.*)$",
	"^(pmunblock) (%d+)$",
	"^(pmblock) (%d+)$",
	"^(markread) (on)$",
	"^(markread) (off)$",
	"^(setbotphoto)$",
	"^(setbotname) (.*)$",		
	"^(contactlist)$",
	"^(dialoglist)$",
	"^(delcontact) (%d+)$",
	"^(addcontact) (.*) (.*) (.*)$", 
	"^(sendcontact) (.*) (.*) (.*)$",
	"^(mycontact)$",
	"^(reload)$",
	"^(updateid)$",
	"^(sync_gbans)$",
	"^(addlog)$",
	"^(remlog)$",
-- InAdmin

-- InSuper
	"^([Aa][Dd][Dd])$",
	"^([Rr][Ee][Mm])$",
		
	"^([Gg][Pp][Ii][Nn][Ff][Oo])$",
	"^([Aa][Dd][Mm][Ii][Nn][Ss])$",
	"^([Pp][Aa][Dd][Mm][Ii][Nn])$",		
	"^([Oo][Ww][Nn][Ee][Rr])$",
	"^([Mm][Oo][Dd][Ll][Ii][Ss][Tt])$",
	"^([Bb][Oo][Tt][Ss])$",
	"^([Ww][Hh][Oo])$",
	"^([Rr][Ee][Ss]) (.*)$",		
	"^([Kk][Ii][Cc][Kk][Ee][Dd])$",
		
        "^([Kk][Ii][Cc][Kk]) (.*)",
	"^([Kk][Ii][Cc][Kk])",
		
	"^([Tt][Oo][Ss][Uu][Pp][Ee][Rr])$",
		
	"^([Ii][Dd])$",
	"^([Ii][Dd]) (.*)$",

	"^([Ss]etlink)$",
	"^([Ll][Ii][Nn][Kk])$",

	"^([Ss][Ee][Tt][Oo][Ww][Nn][Ee][Rr]) (.*)$",
	"^([Ss][Ee][Tt][Oo][Ww][Nn][Ee][Rr])$",
	"^([Pp][Rr][Oo][Mm][Oo][Tt][Ee]) (.*)$",
	"^([Pp][Rr][Oo][Mm][Oo][Tt][Ee])",
	"^([Dd][Ee][Mm][Oo][Tt][Ee]) (.*)$",
	"^([Dd][Ee][Mm][Oo][Tt][Ee])",
		
	"^([Ss][Ee][Tt][Nn][Aa][Mm][Ee]) (.*)$",
	"^([Ss][Ee][Tt][Aa][Bb][Oo][Uu][Tt]) (.*)$",
	"^([Ss][Ee][Tt][Rr][Uu][Ll][Ee][Ss]) (.*)$",
	"^([Ss][Ee][Tt][Pp][Hh][Oo][Tt][Oo])$",

	"^([Dd]el)$",
		
	"^([Ll][Oo][Cc][Kk]) (.*)$",
	"^([Uu][Nn][Ll][Oo][Cc][Kk]) (.*)$",
		
	"^([Mm][Uu][Tt][Ee])$",
	"^([Mm][Uu][Tt][Ee]) (.*)$",
	"^([Uu][Nn][Mm][Uu][Tt][Ee])$",
	"^([Uu][Nn][Mm][Uu][Tt][Ee]) (.*)$",	
		
	"^([Ss][Ee][Tt][Tt][Ii][Nn][Gg][Ss])$",
	"^([Rr][Uu][Ll][Ee][Ss])$",		
	"^([Ss][Ee][Tt][Ff][Ll][Oo][Oo][Dd]) (%d+)$",		
	"^([Cc][Ll][Ee][Aa][Nn]) (.*)$",
	"^([Mm][Uu][Tt][Ee][Ll][Ii][Ss][Tt]$",
-- InSuper

-- SetExpire
    "^([Ss][Ee][Tt][Ee][Xx][Pp][Ii][Rr][Ee]) (.*)$",
    "^(setexp)_(.*)_(.*)$",
    "^([Ee][Xx][Pp][Ii][Rr][Ee][Tt][Ii][Mm][Ee])$",
    "^([Cc][Hh][Aa][Rr][Gg][Ee])$",
-- SetExpire

-- Tools
   "^([Rr][Mm][Ss][Gg]) (%d*)$",
   "^([Cc][Aa][Ll][Cc]) (.*)$",		
   "^([Tt][Ii][Mm][Ee])$",
   "^([Vv][Oo][Ii][Cc][Ee]) +(.*)$",
   "^([Mm]ean) (.*)$",
   "^([Ss]hort) (.*)$",
   "^([Mm][Ee])$",		
   "^([Gg][Ii][Ff]) (.*)$",
   "^([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*)$",
   "^(love) (.+) (.+)$",		
   "^[Uu][Pp][Dd][Aa][Tt][Ee]$",	
   "^([Ll][Ee][Aa][Vv][Ee])$",
   "^serverinfo$",		
    "^[Pp]$",
    "^[Pp]? (+) ([%w_%.%-]+)$",
    "^[Pp]? (-) ([%w_%.%-]+)$",
    "^[Pp]? (+) ([%w_%.%-]+) (chat)",
    "^[Pp]? (-) ([%w_%.%-]+) (chat)",
    "^[Rr]$",

    "^([Ff][Ii][Ll][Tt][Ee][Rr]) (.*)$",
    "^([Uu][Nn][Ff][Ii][Ll][Tt][Ee][Rr]) (.*)$",
    "^([Ff][Ii][Ll][Tt][Ee][Rr][Ll][Ii][Ss][Tt])$",
    "^([Cc][Ll][Ee][Aa][Nn]) ([Ff][Ii][Ll][Tt][Ee][Rr][Ll][Ii][Ss][Tt])$",
-- Tools

-- SetWlc
  "^([Ss][Ee][Tt][Ww][Ll][Cc]) +(.*)$",
  "^([Dd][Ee][Ll][Ww][Ll][Cc])$",
    
},
run = run
}
