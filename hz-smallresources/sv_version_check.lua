local label =
[[ 
 //
 || ███╗   ██╗██╗  ██╗
 || ████╗  ██║██║  ██║
 || ██╔██╗ ██║███████║
 || ██║╚██╗██║██╔══██║
 || ██║ ╚████║██║  ██║
 || ╚═╝  ╚═══╝╚═╝  ╚═╝
 || 
 ||]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest( "https://BruceFX.github.io/NH-smallresources_web/version.txt", function( err, text, headers )
	Citizen.Wait( 2000 )

	print( label )

	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )

		if ( text ~= curVer ) then
			print( "  ||    ^1Your NH small resources version is outdated, there might be more script that you might like, go to https://github.com/BruceFX/NH-smallresources to update." )
		else
			print( "  ||    ^2NH Small Resouces is up to date!\n^0  ||\n  \\\\\n" )
		end
	else
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end

	if ( GetCurrentResourceName() ~= "NH-smallresources" ) then
		print( "^1ERROR: Resource name is not NH-smallresources, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as NH-smallresources^0\n\n" )
	end
end )
