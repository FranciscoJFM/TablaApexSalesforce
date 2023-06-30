// mySetComponentController.js
({
    init: function(component, event, helper) {
        var action = component.get("c.animals");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var animalSet = response.getReturnValue();
                component.set("v.animalSet", Array.from(animalSet));
            }
        });
        
        $A.enqueueAction(action);
    }
})