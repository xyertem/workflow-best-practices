/*global QUnit*/

sap.ui.define([
	"demoworkflowdevfiorifirstusertaskui/firstusertaskui/controller/ConfirmOrChangeEquipment.controller"
], function (Controller) {
	"use strict";

	QUnit.module("ConfirmOrChangeEquipment Controller");

	QUnit.test("I should test the ConfirmOrChangeEquipment controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
