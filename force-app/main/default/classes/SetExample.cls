/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-16-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

/*Set (conjunto): sfdx force:org:open
Un Set es una colección no ordenada de elementos únicos. 
Esto significa que no puede contener duplicados y no mantiene un orden específico de los elementos almacenados.*/

public with sharing class SetExample {
    @AuraEnabled
    public static List<String> animals() {
        Set<String> animalSet = new Set<String>();
        animalSet.add('Cat');
        animalSet.add('Dog');
        animalSet.add('Rat');
        animalSet.add('Lion');
        
        // Check if 'Cat' is present in the set
        System.debug(animalSet.contains('Cat')); // Returns true
        
        // Check if 'Perro' is present in the set
        System.debug(animalSet.contains('Perro')); // Returns false
        
        // Remove 'Lion' from the set
        animalSet.remove('Lion');
        
        // Convert the set to a list before returning
        List<String> animalList = new List<String>(animalSet);
        
        // Display the modified list
        System.debug(animalList); // Returns ["Cat", "Dog", "Rat"]
        
        return animalList; 
    }
}