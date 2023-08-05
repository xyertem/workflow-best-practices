/*global QUnit*/

sap.ui.define([
	"demoworkflowdevworkflowlistui/workflowlistui/controller/WorkflowList.controller"
], function (Controller) {
	"use strict";

	QUnit.module("WorkflowList Controller");

	QUnit.test("I should test the WorkflowList controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
