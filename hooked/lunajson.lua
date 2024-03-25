local newdecoder = require 'hooked/lunajson.decoder'
local newencoder = require 'hooked/lunajson.encoder'
local sax = require 'hooked/lunajson.sax'
-- If you need multiple contexts of decoder and/or encoder,
-- you can require lunajson.decoder and/or lunajson.encoder directly.
return {
	decode = newdecoder(),
	encode = newencoder(),
	newparser = sax.newparser,
	newfileparser = sax.newfileparser,
}
