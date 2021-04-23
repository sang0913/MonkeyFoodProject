import UIKit
class Resource {
    
    class SourceImage {
        class SourceImageLogin {
            public static var logo = UIImage(named: "Logo")
            public static var logoBG = UIImage(named: "Logo_bg")
            public static var ImageTopLogin = UIImage(named: "Shaped_subtraction")
            public static var ImageFaceBook = UIImage(named: "facebook")
            public static var ImageGoogle = UIImage(named: "google")
        }
        class SourceImageHomeScreen{
            public static var img_Shopping = UIImage(named: "shopping")
            public static var img_arrowDroplistdown = UIImage(named: "arrowDroplistdown")
         
         }
      
        
    }
    
    class SourceSignInSignUpScreen {
        class LauchScreen {
            public static var  lblFooterLogo = "Food delivery"
            public static var lblLeftLogo = "Meal"
            public static var lblRightLogo = "Monkey"
            public static var titleLoginScreen = " Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"
            public static var titleButtonLogin  = "Login"
            public static var titleButtonCreate  = "Create an Account"
            
        }
        class LoginScreen {
            public static var TopTile_Login = "Login"
            public static var titleTopDiscriptionLoginScreen = "Add your details to login"
            public static var title_ForgotPS_LoginScreen = "Forgot your password?"
            public static var title_OrLoginWith_LoginScreen = "or Login With"
            public static var titleButtonLoginFB  = "Login with Facebook"
            public static var titleButtonLoginGG  = "Login with Google"
            public static var titleFooterLoginLeft = "Already have an Account?"
            public static var title_FooterLoginLeft = "Don't have an Account?"
            
            public static var txt_PlaceholderEmail =  "     " + "Your Email"
            public static var txt_PlaceholderPassword =  "     " + "Password"
         
        }
        class SignUpScreen {
            public static var TopTile_SignUp = "Sign Up"
            public static var titleTopDiscriptionSignUpScreen = "Add your details to login"
            public static var txt_Placeholder_Name =  "     " + "User Name"
            public static var txt_Placeholder_Email =  "     " + "Email"
            public static var txt_Placeholder_MobileNo =  "     " + "Mobile No"
            public static var txt_Placeholder_Address =  "     " + "Address"
            public static var txt_Placeholder_Password =  "     " + "Password"
            public static var txt_Placeholder_Confirm_Password =  "     " + "Confirm Password"
            public static var TopTile_ResetPassword = "Reset Password"
            public static var titleTopDiscription_Reset_Screen = "Please enter your email to receive a link to  create a new password via email"
       }
      
        
    }
    
    class SourceTabbarScreen {
        class tabbarHome {
            //imgae
            public static var img_Search = UIImage(named: "imageSearch")

            
            //text
            public static var lbl_topTextTitle = "Delivering to"
            public static var lbl_DropListDown = "Current Location"
            public static var lbl_MiddleHomeLeft = "Popular Restaurents"
            public static var lbl_MiddleHomeRight = "View all"
            public static var lbl_Title_FooterHomeLeft =  "Recent Items"
            //placeholder
            public static var textField_Search = "Current Location"
           
            
        }
        class tabbarProfile {
            //imgae
            public static var img_Camera_ProfileBar = UIImage(systemName: "camera.fill")
            public static var img_Pencil_ProfileBar = UIImage(named: "pencil")

            
            //text
            public static var lbl_Toptile_ProfileBar = "Profile"
            public static var lbl_EditProfile = "Edit Profile"
            public static var lbl_SignOut_ProfileBar = "Sign out"

        }
        class tabbarOffers {
            //imgae
            public static var img_RateStar = UIImage(named: "RateStar")
            //text
            public static var lbl_Toptile_OfferBar = "Latest Offers"
            public static var lbl_ToptileDiscription_OfferBar = "Find discounts, Offers special meals and more!"

        }
        class tabbarMore{
            //imgae
            public static var img_ArrowGray = UIImage(named: "arrowGray")
            public static var img_Hand = UIImage(named: "hand")
            public static var img_Order = UIImage(named: "shopping-bag")
            public static var img_Notification = UIImage(named: "bell")
            public static var img_Inbox = UIImage(named: "mail")
            public static var img_AboutUS = UIImage(named: "aboutus")
            
            //text
            public static var lbl_Title_Payment = "Payment Details"
            public static var lbl_Title_Order = "My Orders"
            public static var lbl_Title_Notification = "Notifications"
            public static var lbl_Title_Inbox = "Inbox"
            public static var lbl_Title_AboutUS = "About Us"
        }
        
    }
    class Fonts {
        class Metropolis {
            
            public static var  MetropolisRegular = "Metropolis-Regular"
            public static var  MetropolisMedium = "Metropolis-Medium"
            public static var  MetropolisBold = "Metropolis-Bold"
            public static var  MetropolisThin = "Metropolis-Thin"
            public static var  MetropolisExtraBold = "Metropolis-ExtraBold"
           public static var  MetropolisSemiBold = "Metropolis-SemiBold"
            
        }
    }
    
}
