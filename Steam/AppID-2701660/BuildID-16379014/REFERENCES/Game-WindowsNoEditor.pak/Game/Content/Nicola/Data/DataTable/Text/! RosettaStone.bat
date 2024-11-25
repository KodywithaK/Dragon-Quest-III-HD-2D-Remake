ECHO
	FOR /F %%a IN ('dir /b') DO jq -s "[[.[][].Rows | to_entries[] | .value.[\"%%a\"] = .value.Text | del(.value.Text)] | sort_by(.key) | from_entries]" "%%a/*.json" > "D:\Coding\github.com\repo\KodywithaK\Dragon-Quest-III-HD-2D-Remake\Steam\AppID-2701660\BuildID-16379014\Game-WindowsNoEditor.pak\Game\Content\Nicola\Data\DataTable\Text\RosettaStone\GOP_Text_%%a.json"
PAUSE