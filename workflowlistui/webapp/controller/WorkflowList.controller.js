sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,JSONModel) {
        "use strict";

        return Controller.extend("demo.workflow.dev.workflowlistui.workflowlistui.controller.WorkflowList", {
            
            _getNewModel : function(){
                let oModel = new JSONModel({
                    name: "",
                    lastname:"",
                    email:""
                })
                return oModel
            },
            
            onInit: function () {
                
            },

            _getWorkflowRuntimeBaseURL: function () {
                var appId = this.getManifestEntry("/sap.app/id");
                var appPath = appId.replaceAll(".", "/");
                var appModulePath = jQuery.sap.getModulePath(appPath);
      
                return appModulePath + "/bpmworkflowruntime/v1";
            },

            startWorkflow: function () {
                var token = this._fetchToken();
                this._startInstance(token);
            },

            _startInstance: function (token) {
    
                var contextJson = oPayload;
                //var sUrl = this._getAppModulePath + "/bpmworkflowruntime/v1/workflow-instances";
                $.ajax({
                    url: this._getWorkflowRuntimeBaseURL() + "/workflow-instances",
                    method: "GET",
                    async: false,
                    contentType: "application/json",
                    headers: {
                        "X-CSRF-Token": token
                    },
                    data: JSON.stringify({
                        definitionId: "employeeinfo.employeeinfo"
                    }),
                    success: function (result, xhr, data) {
                        model.setProperty("/result", JSON.stringify(result, null, 4));
                    }
                });
            },

            _fetchToken: function () {
                var token;
                var a = "asd";
                $.ajax({
                    url: "/xsrf-token",
                    method: "GET",
                    async: false,
                    headers: {
                        "X-CSRF-Token": "Fetch"
                    },
                    success: function (result, xhr, data) {
                        token = data.getResponseHeader("X-CSRF-Token");
                    },
                    error: function(e){
                        console.log(e)
                    }
                });
                return token;
            }

        });
    });
