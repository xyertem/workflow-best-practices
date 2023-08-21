{
	"contents": {
		"eef8d94e-4b46-46d4-a89c-89e807a253d3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "employeeinfo.employeeinfo",
			"subject": "employeeInfo",
			"customAttributes": [{
				"id": "name",
				"label": "name",
				"type": "string",
				"value": "${context.name}"
			}, {
				"id": "lastname",
				"label": "lastname",
				"type": "string",
				"value": "${context.lastname}"
			}, {
				"id": "email",
				"label": "email",
				"type": "string",
				"value": "${context.email}"
			}],
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
					"name": "Approve Mail"
				},
				"0358dabe-6fb9-4e2c-9b8d-620cdd610c85": {
					"name": "Hr"
				},
				"1d87118d-01a5-4218-9ca7-938f9d236f59": {
					"name": "HrDecision"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"aa716139-c84b-46d8-8907-283a4b0aa369": {
					"name": "SequenceFlow2"
				},
				"7884d82d-75de-4626-9a25-62d512ee43a9": {
					"name": "SequenceFlow3"
				},
				"55a89ceb-11b4-420f-a5f7-7d46a080e2ee": {
					"name": "approval"
				},
				"449183db-910a-45b6-9bb3-68115e7ad581": {
					"name": "reject"
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
			"name": "Approve Mail",
			"mailDefinitionRef": "965bb057-8806-4303-90ff-66b89c0d7679"
		},
		"0358dabe-6fb9-4e2c-9b8d-620cdd610c85": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Employee Details",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://trialdemoworkflowdev.demoworkflowdevworkflowfirstusertaskui/demo.workflow.dev.workflowfirstusertaskui",
			"recipientUsers": "yuksel.ertem@nttdata.com",
			"userInterfaceParams": [],
			"id": "usertask1",
			"name": "Hr"
		},
		"1d87118d-01a5-4218-9ca7-938f9d236f59": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "HrDecision",
			"default": "55a89ceb-11b4-420f-a5f7-7d46a080e2ee"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "0358dabe-6fb9-4e2c-9b8d-620cdd610c85"
		},
		"aa716139-c84b-46d8-8907-283a4b0aa369": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7884d82d-75de-4626-9a25-62d512ee43a9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "0358dabe-6fb9-4e2c-9b8d-620cdd610c85",
			"targetRef": "1d87118d-01a5-4218-9ca7-938f9d236f59"
		},
		"55a89ceb-11b4-420f-a5f7-7d46a080e2ee": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "approval",
			"sourceRef": "1d87118d-01a5-4218-9ca7-938f9d236f59",
			"targetRef": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d"
		},
		"449183db-910a-45b6-9bb3-68115e7ad581": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision=='reject'}",
			"id": "sequenceflow5",
			"name": "reject",
			"sourceRef": "1d87118d-01a5-4218-9ca7-938f9d236f59",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"c563286c-0a0c-4b9c-98e1-7426d86baac3": {},
				"109607d0-bbee-46a1-998a-30a4404eab76": {},
				"6b34557d-d691-457a-8291-9e544e741cf4": {},
				"940f406f-a5a3-4ef8-b2d7-30c7dc02de18": {},
				"a5320025-1444-4ed3-9bbe-565d60742642": {},
				"5f1270d5-2e02-4933-8f77-0a0e8b8d8bc8": {},
				"edd35d80-e604-4a4f-baf4-24c175dab5fb": {}
			}
		},
		"cbb01533-adba-43ea-9572-c37d8116e464": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/employeeInfo/employeInfo.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -122,
			"y": 105,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 989,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-106,118.5 160,118.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6b34557d-d691-457a-8291-9e544e741cf4",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"c563286c-0a0c-4b9c-98e1-7426d86baac3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 756,
			"y": 240,
			"width": 100,
			"height": 60,
			"object": "37d7dd05-8fc8-4d24-b777-6fbb11749c1d"
		},
		"109607d0-bbee-46a1-998a-30a4404eab76": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "806,267.1875 1006.5,267.1875 1006.5,115.75",
			"sourceSymbol": "c563286c-0a0c-4b9c-98e1-7426d86baac3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "aa716139-c84b-46d8-8907-283a4b0aa369"
		},
		"6b34557d-d691-457a-8291-9e544e741cf4": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 110,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "0358dabe-6fb9-4e2c-9b8d-620cdd610c85"
		},
		"940f406f-a5a3-4ef8-b2d7-30c7dc02de18": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "160,116 492,116",
			"sourceSymbol": "6b34557d-d691-457a-8291-9e544e741cf4",
			"targetSymbol": "a5320025-1444-4ed3-9bbe-565d60742642",
			"object": "7884d82d-75de-4626-9a25-62d512ee43a9"
		},
		"a5320025-1444-4ed3-9bbe-565d60742642": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 471,
			"y": 95,
			"object": "1d87118d-01a5-4218-9ca7-938f9d236f59"
		},
		"5f1270d5-2e02-4933-8f77-0a0e8b8d8bc8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "492,115.5 492,272.375 806,272.375",
			"sourceSymbol": "a5320025-1444-4ed3-9bbe-565d60742642",
			"targetSymbol": "c563286c-0a0c-4b9c-98e1-7426d86baac3",
			"object": "55a89ceb-11b4-420f-a5f7-7d46a080e2ee"
		},
		"edd35d80-e604-4a4f-baf4-24c175dab5fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "493,101 493,45.5 1006.5,45.5 1006.5,115.5",
			"sourceSymbol": "a5320025-1444-4ed3-9bbe-565d60742642",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "449183db-910a-45b6-9bb3-68115e7ad581"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"scripttask": 1,
			"mailtask": 1,
			"exclusivegateway": 1
		},
		"965bb057-8806-4303-90ff-66b89c0d7679": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.email}",
			"cc": "ykselertem@yandex.com",
			"subject": "mail server test workflow",
			"text": "workflow tarafından geldi canım sana",
			"id": "maildefinition1"
		}
	}
}