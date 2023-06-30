({
    init: function(component, event, helper) {
        var action = component.get("c.MapExample");
        var empleadosMap;
        var totalSalario = 0;
        var totalNeto = 0;
        var totalGanancias = 0;

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                empleadosMap = response.getReturnValue();
                for (var key in empleadosMap) {
                    if (empleadosMap.hasOwnProperty(key)) {
                        var empleado = empleadosMap[key];
                        empleado.Ganancias = empleado.Salario * 12;
                        empleado.TotalNeto = empleado.Salario + empleado.Ganancias;
                        totalSalario += empleado.Salario; // empleado.Ganancias <th>Ganancias</th> tiene que ser igual al nombre de la columna de la tabla
                        totalGanancias += empleado.Ganancias;
                        totalNeto += empleado.TotalNeto;
                    }
                }
             
                component.set("v.empleadosMap", empleadosMap);
                component.set("v.totalSalario", totalSalario);
                component.set("v.totalGanancias", totalGanancias);
                component.set("v.totalNeto", totalNeto);
            }
        });
        $A.enqueueAction(action);
    }
})
