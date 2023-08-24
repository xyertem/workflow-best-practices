sap.ui.define(
    [
        "sap/ui/core/mvc/Controller",
        "sap/m/MessageToast"
    ],
    function(BaseController,MessageToast) {
      "use strict";
  
      return BaseController.extend("demo.workflow.dev.workflowfirstusertaskui.controller.App", {
        onInit() {
          var DataModel = this.getOwnerComponent().getModel("context");
          var sName = DataModel.getProperty("/name");
          this.getView().setModel(DataModel, "context");
          MessageToast.show(sName);
        } 
      });
    }
  );
  