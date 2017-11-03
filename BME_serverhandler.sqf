	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2013-2018 Nicolas BOITEUX

	Bus Message Exchange (BME)
	
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>. 

	Usage: 
		BME_netcode_server_remotefunction = { code to execute on server side };
	*/

	// Example function write log on server side
	BME_netcode_server_hint = {
		hint format["BME: server side: %1", _this];
		diag_log format["BME: server side: %1", _this];
	};

	BME_netcode_server_getServerName = {
		if(isNil "counterserver") then { counterserver = 0;};
		counterserver = counterserver + 1;
		format ["my name is server%1 and i return you a result", counterserver];
	};	

	// return true when read
	true;