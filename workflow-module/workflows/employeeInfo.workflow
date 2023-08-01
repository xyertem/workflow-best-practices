{
	"contents": {
		"eef8d94e-4b46-46d4-a89c-89e807a253d3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "employeeinfo.employeeinfo",
			"subject": "employeeInfo",
			"name": "employeeInfo",
			"documentation": "employeeInfo",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"37d7dd05-8fc8-4d24-b777-6fbb11749c1d": {
					"name": "MailTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"aa716139-c84b-46d8-8907-283a4b0aa369": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"cbb01533-adba-43ea-9572-c37d8116e464": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"37d7dd05-8fc8-4d24-b777-6fbb11749c1d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "965bb057-8806-4303-90ff-66b89c0d7679"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d"
		},
		"aa716139-c84b-46d8-8907-283a4b0aa369": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"c563286c-0a0c-4b9c-98e1-7426d86baac3": {},
				"109607d0-bbee-46a1-998a-30a4404eab76": {}
			}
		},
		"cbb01533-adba-43ea-9572-c37d8116e464": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/employeeInfo/employeInfo.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 748,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 598,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "c563286c-0a0c-4b9c-98e1-7426d86baac3",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"c563286c-0a0c-4b9c-98e1-7426d86baac3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 548,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d"
		},
		"109607d0-bbee-46a1-998a-30a4404eab76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "598,115.75 765.5,115.75",
			"sourceSymbol": "c563286c-0a0c-4b9c-98e1-7426d86baac3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "aa716139-c84b-46d8-8907-283a4b0aa369"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"mailtask": 1
		},
		"965bb057-8806-4303-90ff-66b89c0d7679": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "ykselertem@yandex.com",
			"subject": "mail server test workflow",
			"text": "workflow tarafından geldi canım sana",
			"id": "maildefinition1"
		}
	}
}