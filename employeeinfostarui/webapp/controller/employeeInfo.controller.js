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
                        text: "",
                        result: ""
                    }));
                },

                startWorkflow: function () {
                    var token = this._fetchToken();
                    this._startInstance(token);
                },

                _startInstance: function (token) {
                    var model = this.getView().getModel();
                    //var text = model.getProperty("/text");
                    var contextJson = {
                        "product": "Hamlet (Paperback)",
                        "inStock": true,
                        "inventory": 20000,
                        "price": 7.49,
                        "publishingDate": "1600-04-23T18:25:43.511Z",
                        "author": {
                            "name": "William Shakespeare"
                        },
                        "publishers": [
                            "Simon & Brown",
                            "SparkNotes",
                            "Dover Publications"
                        ]
                    };
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
