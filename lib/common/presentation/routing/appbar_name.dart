class GetAppBarName {
  String call(String name) {
    switch (name) {
      case "DashboardRoute":
        return "Home";
      case "ChooseDurationRoute":
        return "Choose Duration";
      case "SelectLocationRoute":
        return "SmartParcel Centers";
      case "SelectLocationDistrictRoute":
        return "SmartParcel Centers";
      case "CustomerToCourierRoute":
        return "Send Parcel";
      case "SelfStoragePaymentRoute":
        return "Self Storage";
      case "CustomerToCustomerPaymentRoute":
        return "Customer - Customer";
      case "CustomerToCourierPaymentRoute":
        return "Send Parcel";
      case "ReceiptRoute":
        return "Home";
// Settings
      case "SettingsRoute":
        return "Settings";
      case "ResetPasswordRoute":
        return "Change Password";
//Profile
      case "ProfileRoute":
        return "Profile";
      case "EditPhotoRoute":
        return "Profile Picture";
//Parcel
      case "ParcelsRoute":
        return "My Parcels";
      case "SelfParcelDetailsRoute":
        return "My Parcels";
      case "CustomerParcelDetailsRoute":
        return "My Parcels";
      case "CourierParcelDetailsRoute":
        return "My Parcels";
      default:
        return "Smart Parcel";
    }
  }
}
