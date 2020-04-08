{
    "id": "fc54e5a1-220c-4beb-a033-8e62e22369ac",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemy",
    "eventList": [
        {
            "id": "0ecc0e83-8d52-48b5-b932-cdf418c3a0c7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "fc54e5a1-220c-4beb-a033-8e62e22369ac"
        },
        {
            "id": "7353715a-81fc-43e6-ace1-714fc6ce2891",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "fc54e5a1-220c-4beb-a033-8e62e22369ac"
        },
        {
            "id": "4a98668b-87d2-4b2b-8a23-a9301ac4fbdc",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "fc54e5a1-220c-4beb-a033-8e62e22369ac"
        }
    ],
    "maskSpriteId": "a5873f01-c74e-4533-be41-d2bb7ffcd709",
    "overriddenProperties": null,
    "parentObjectId": "4e33526a-2a45-4b53-8069-8e937c759ef4",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "9f050c10-c83d-44d5-9303-0a2d4a41d3f3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "v_spd",
            "varType": 0
        },
        {
            "id": "4db9ad69-6461-4dd6-8a37-7ce55b1655b0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.2",
            "varName": "grv",
            "varType": 0
        },
        {
            "id": "3d8e85cb-8c2b-4e36-a42f-4fd910d5521e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "walk_spd",
            "varType": 0
        },
        {
            "id": "fa87d5ca-4953-42a2-837b-bc1fe8c48d16",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "walk_spd",
            "varName": "h_spd",
            "varType": 0
        },
        {
            "id": "a392ff69-2899-4cfb-9f4b-948563160dc7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "6",
            "varName": "run_spd",
            "varType": 0
        },
        {
            "id": "e1d7e03e-204a-4b46-a4ae-b9c8ef4badd0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hit_from",
            "varType": 0
        },
        {
            "id": "b84f1486-3209-47f6-af23-41ab571bda5f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "size",
            "varType": 0
        },
        {
            "id": "393e140a-8caf-483e-b245-99cc5346139d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "afraid_of_heights",
            "varType": 3
        },
        {
            "id": "f127fdb1-ec94-4fea-a7a3-3d621c74b497",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "grounded",
            "varType": 3
        },
        {
            "id": "3013d352-22c3-4890-a8dc-18878793cc04",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "has_weapon",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "a5873f01-c74e-4533-be41-d2bb7ffcd709",
    "visible": true
}