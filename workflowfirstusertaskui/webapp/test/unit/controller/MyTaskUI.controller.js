/*global QUnit*/

sap.ui.define([
	"demoworkflowdev/workflowfirstusertaskui/controller/MyTaskUI.controller"
], function (Controller) {
	"use strict";

	QUnit.module("MyTaskUI Controller");

	QUnit.test("I should test the MyTaskUI controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
