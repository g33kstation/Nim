import json

let
  small_json = """{"test": 1.3, "key2": true}"""
  jobj = parseJson(small_json)

#assert (jobj.kind == JObject)
echo jobj.kind
echo jobj["test"]
echo jobj["key2"]
echo($jobj["test"].fnum)
echo($jobj["key2"].bval)
