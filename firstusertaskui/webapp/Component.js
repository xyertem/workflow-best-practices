/**
 * eslint-disable @sap/ui5-jsdocs/no-jsdoc
 */

sap.ui.define([
        "sap/ui/core/UIComponent",
        "sap/ui/Device",
        "demo/workflow/dev/fiori/firstusertaskui/firstusertaskui/model/models"
    ],
    function (UIComponent, Device, models) {
        "use strict";

        return UIComponent.extend("demo.workflow.dev.fiori.firstusertaskui.firstusertaskui.Component", {
            metadata: {
                manifest: "json"
            },

            /**
             * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
             * @public
             * @override
             */

            
            init: function () {
                
                var startupParameters = this.getComponentData().startupParameters;
                var taskModel = startupParameters.taskModel;
                var taskData = taskModel.getData();
                var taskId = taskData.InstanceID;

                var that = this;
                var contextModel = new sap.ui.model.json.JSONModel("/demo.workflow.dev.fiori.firstusertaskui.firstusertaskui/bpmworkflowruntime/v1/task-instances/" + taskId + "/context");
                var contextData = contextModel.getData();
                
                // call the base component's init function
                UIComponent.prototype.init.apply(this, arguments);

                // enable routing
                this.getRouter().initialize();

                // set the device model
                this.setModel(models.createDeviceModel(), "device");


            }
        });
    }
);