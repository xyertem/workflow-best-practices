sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("demo.workflow.dev.employeeinfostarui.controller.employeeInfo",
            {

                /*_getAppModulePath: function () {
                    //var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
                    //var appPath = appId.replaceAll(".", "");
                    // @ts-ignore
                    var appModulePath = jQuery.sap.getModulePath("^/demo.workflow.dev/employeeinfostarui");
    
                    return appModulePath;
                },*/
                
                onInit: function () {
                    this.getView().setModel(new sap.ui.model.json.JSONModel({
                        name: "",
                        surname: "",
                        email:""
                    }));
                },

                startWorkflow: function () {
                    var token = this._fetchToken();
                    this._startInstance(token);
                },

                _startInstance: function (token) {
                    var oPayload = {};
                    var model = this.getView().getModel();
                    oPayload.name = model.getProperty("/name");
                    oPayload.surname = model.getProperty("/surname");
                    oPayload.email = model.getProperty("/email");
                    var contextJson = oPayload;
                    //var sUrl = this._getAppModulePath + "/bpmworkflowruntime/v1/workflow-instances";
                    $.ajax({
                        url: "/trialdemoworkflowdev.demoworkflowdevemployeeinfostarui/bpmworkflowruntime/v1/workflow-instances",
                        method: "POST",
                        async: false,
                        contentType: "application/json",
                        headers: {
                            "X-CSRF-Token": token
                        },
                        data: JSON.stringify({
                            definitionId: "employeeinfo.employeeinfo",
                            context: contextJson
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
                        url: "/trialdemoworkflowdev.demoworkflowdevemployeeinfostarui/bpmworkflowruntime/v1/xsrf-token",
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
            }
        );
    });
