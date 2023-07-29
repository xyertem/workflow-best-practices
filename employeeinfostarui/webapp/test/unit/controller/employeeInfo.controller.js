/*global QUnit*/

sap.ui.define([
	"demoworkflowdev/employeeinfostarui/controller/employeeInfo.controller"
], function (Controller) {
	"use strict";

	QUnit.module("employeeInfo Controller");

	QUnit.test("I should test the employeeInfo controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
