public class validateAddress {
    public void validateHomeAddress() {
        string houseName = 'Himels';
        string streetName = 'Wyckchester';
        string cityName = 'Pearland';
        string stateName = 'Texas';
        string stateCode = 'TX';
        string countryName = 'USA';
        string countryCode = 'US';

        integer lengthofStreetName = streetName.length();
        system.debug(lengthofStreetName);
        Boolean doesContainHomeName = streetName.contains(houseName);
        system.debug(doesContainHomeName);
        string upperStateCode = stateCode.toUpperCase();
        system.debug(upperStateCode);
        string upperCountryCode = countryCode.toUpperCase();
        system.debug(upperCountryCode);
        string upperCountryName = countryName.toUpperCase();
        system.debug(upperCountryName);
        string lowerCityName = cityName.toLowerCase();
        system.debug(lowerCityName);
        string lowerStateName = stateName.toLowerCase();
        system.debug(lowerStateName);
        system.debug(houseName+'  '+streetName+'   '+cityName+'   '+ stateName+'   '+ countryName);

    }
}
