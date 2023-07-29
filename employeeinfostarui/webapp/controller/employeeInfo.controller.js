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
                    var text = model.getProperty("/text");
                    var contextJson = JSON.parse(text);
                    $.ajax({
                        url: "/demoworkflowdevemployeeinfostarui/bpmworkflowruntime/v1/workflow-instances",
                        method: "POST",
                        async: false,
                        contentType: "application/json",
                        headers: {
                            "X-CSRF-Token": token
                        },
                        data: JSON.stringify({
                            definitionId: "employeeInfo",
                            context: contextJson
                        }),
                        success: function (result, xhr, data) {
                            model.setProperty("/result", JSON.stringify(result, null, 4));
                        }
                    });
                },

                _fetchToken: function () {
                    var token;
                    $.ajax({
                        url: "/demoworkflowdevemployeeinfostarui/bpmworkflowruntime/v1/xsrf-token",
                        method: "GET",
                        async: false,
                        headers: {
                            "X-CSRF-Token": "Fetch"
                        },
                        success: function (result, xhr, data) {
                            token = data.getResponseHeader("X-CSRF-Token");
                        }
                    });
                    return token;
                }
            }
        );
    });
