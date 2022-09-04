-- credits to HeIsNotMySon on v3rm
game:GetService'ReplicatedFirst'.ChildAdded:Connect(function(child)
   rconsoleprint('child added:'..child.Name.."\n")
   if tostring(child) == "Character_Core" then
           local temp
   temp = hookmetamethod(game,"__index",function(self,key)
       if not checkcaller() and getcallingscript() == child then
           rconsoleprint'tried to index'
           return wait(9e9) end
       return temp(self,key)
   end)
   end
end)
