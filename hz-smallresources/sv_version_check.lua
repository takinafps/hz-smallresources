local label =
[[ 
  //
  || 	$$\   $$\ $$$$$$$$\ 
  || 	$$ |  $$ |\____$$  |
  || 	$$ |  $$ |    $$  / 
  || 	$$$$$$$$ |   $$  /  
  || 	$$  __$$ |  $$  /   
  || 	$$ |  $$ | $$  /    
  || 	$$ |  $$ |$$$$$$$$\ 
  || 	\__|  \__|\________|					  
  || 
  ||]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest( "https://BruceFX.github.io/hz-smallresources_web/version.txt", function( err, text, headers )
	Citizen.Wait( 2000 )

	print( label )

	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )

		if ( text ~= curVer ) then
			print( "  ||    ^1Your HZ small resources version is outdated, there might be more script that you might like, go to https://github.com/BruceFX/hz-smallresources to update." )
		else
			print( "  ||    ^2HZ Small Resouces is up to date!\n^0  ||\n  \\\\\n" )
		end
	else
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end

	if ( GetCurrentResourceName() ~= "hz-smallresources" ) then
		print( "^1ERROR: Resource name is not hz-smallresources, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as hz-smallresources^0\n\n" )
	end
end )
