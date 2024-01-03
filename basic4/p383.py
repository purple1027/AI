import json

member={ "id":"swhong",
          "name":"홍성우",
          "age":23,
          "history": [
            {"data":"2021-03-15","route":"mobile"},
            {"data":"2020-06-23","route":"pc"}]


json_string=json.dumps(member, ensure_ascii=False, indent=4)

print(json_string)
}