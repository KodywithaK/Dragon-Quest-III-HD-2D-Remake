@REM @ECHO OFF
ECHO
	jq -s "[[[.[][]| to_entries[]]| sort_by(.SelfId)| group_by(.value.SelfId)[]| map(reduce . as $obj ({}; .[$obj.key] = $obj.value)| add)| add]| .[] as {$SelfId, $cn, $de, $en, $es, $es_419, $fr, $it, $jp, $jp_hi, $ko, $tw}| {$SelfId: {$SelfId, $cn, $de, $en, $es, $es_419, $fr, $it, $jp, $jp_hi, $ko, $tw}}]" "*.json" > D:\Coding\github.com\repo\KodywithaK\Dragon-Quest-III-HD-2D-Remake\Steam\AppID-2701660\BuildID-16379014\Game-WindowsNoEditor.pak\Game\Content\Nicola\Data\DataTable\Text\RosettaStone\GOP_Text_!ALL.json
@REM	jq -s 
@REM	"
@REM	[
@REM	    [
@REM	        [
@REM	            .[][]
@REM	            | to_entries[]
@REM	        ]
@REM	        | sort_by(.SelfId)
@REM	        | group_by(.value.SelfId)[]
@REM	        | map(
@REM	            reduce . as $obj ({}; .[$obj.key] = $obj.value)
@REM	            | add
@REM	        )
@REM	        | add
@REM	    ]
@REM	    | .[] as {$SelfId, $cn, $de, $en, $es, $es_419, $fr, $it, $jp, $jp_hi, $ko, $tw}
@REM	    | {$SelfId: {$SelfId, $cn, $de, $en, $es, $es_419, $fr, $it, $jp, $jp_hi, $ko, $tw}}
@REM	]
@REM	" 
@REM	> D:\Coding\github.com\repo\KodywithaK\Dragon-Quest-III-HD-2D-Remake\Steam\AppID-2701660\BuildID-16379014\Game-WindowsNoEditor.pak\Game\Content\Nicola\Data\DataTable\Text\RosettaStone\GOP_Text_!ALLbat.json
PAUSE