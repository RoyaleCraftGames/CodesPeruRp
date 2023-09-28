local RunService = game:GetService("RunService")
local Codes = {}
--[[Ejemplo
	["Codigo"] = Cantidad de Soles
]]

Codes = {
	["royalecraft"] = 100 ,
	["franko_dev"] = 100
}
function Codes.IsServer()
	if (RunService:IsServer()) then
		return true
	else
		return false
	end
end
function Codes.ValidateCode(Code: string)
	if Codes.IsServer() == false then return end
	if Codes[Code] ~= nil then 
		return true 
	else 
		return false
	end
end
function Codes.Printsmht()
	print("aasdadadawd")
end

return Codes
