#!/bin/bash
curl -d '{"name": "soda","quantity": 20}' -H "Content-Type: application/json" -X POST http://127.0.0.1:3000/item

curl http://127.0.0.1:3000/items

ID=$(curl --silent http://127.0.0.1:3000/items | jq -r '.[].id')

curl -X PUT http://localhost:3000/item/${ID}/quantity/3
