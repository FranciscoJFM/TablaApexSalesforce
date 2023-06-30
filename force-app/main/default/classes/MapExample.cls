/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-16-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class MapExample {
    @AuraEnabled
    public static List<Map<String, Object>> MapExample() {
        Map<String, Decimal> empleadoSalario = new Map<String, Decimal>();
        empleadoSalario.put('Empleado A', 2000);
        empleadoSalario.put('Empleado B', 3000);
        empleadoSalario.put('Empleado C', 5000);
        empleadoSalario.put('Empleado D', 6000);
        empleadoSalario.put('Empleado E', 7000);
        empleadoSalario.put('Empleado F', 8000);
        empleadoSalario.put('Empleado G', 9000);
        empleadoSalario.put('Empleado H', 1000);

        List<Map<String, Object>> empleadoSalarioList = new List<Map<String, Object>>();
        for (String key : empleadoSalario.keySet()) {
            Map<String, Object> empleadoSalarioMap = new Map<String, Object>();
            empleadoSalarioMap.put('Empleado', key);
            empleadoSalarioMap.put('Salario', empleadoSalario.get(key));
            empleadoSalarioList.add(empleadoSalarioMap);
        }

        return empleadoSalarioList;
    }
}