
//  Demension.swift
//  TestLoginScreeen
//
//  Created by sang1 on 04/04/2021.
//


//
import UIKit
class Demension {
    public static var shared = Demension()

    
// Iphone X
    var widthScale:CGFloat = 1.0
    var heightScale:CGFloat = 1.0
    private init() {


        let witdhIP_X:CGFloat = 375 * widthScale
        let heightIP_X:CGFloat = 812 * heightScale

        widthScale = UIScreen.main.bounds.width / witdhIP_X
        heightScale = UIScreen.main.bounds.height / heightIP_X
    }

    
        //iphone 8
//    var widthScale:CGFloat = 1
//    var heightScale:CGFloat = 0.953
//    private init() {
//
//        let witdhIP8:CGFloat = 375
//        let heightIP8:CGFloat = 667
//
//
//        widthScale = UIScreen.main.bounds.width / witdhIP8 * widthScale
//        heightScale = UIScreen.main.bounds.height / heightIP8 * heightScale
//
//    }

//    iphone 11 ProMax
    
    
//    var widthScale:CGFloat = 0.9057
//    var heightScale:CGFloat = 0.90625
//private init() {
//
//    let witdh_IP11Promax:CGFloat = 414 * widthScale
//    let height_IP11Promax:CGFloat = 896 * heightScale
//
//
//    widthScale = UIScreen.main.bounds.width / witdh_IP11Promax
//    heightScale = UIScreen.main.bounds.height / height_IP11Promax
//}
    
   //MARK: FontSize
    
    public var headlineFontSize_24: CGFloat {
        return 24 * heightScale
    }
    var titleFontSize_30: CGFloat {
        return 30 * self.heightScale
    }
    var big_titleFontSize_34: CGFloat {
        return 34 * self.heightScale
    }
    var titleFontSize_20: CGFloat {
        return 20 * self.widthScale
    }
    var titleFontSize_24: CGFloat {
        return 24  * self.widthScale
    }
    var titleFontSize32:CGFloat {
        return 32 * widthScale
    }
    var bodyFontSize_16: CGFloat {
        return 16 * self.heightScale
    }
    
    var captionFontSize_14: CGFloat {
        return 14 * self.heightScale
    }
    var captionFontSize_13: CGFloat {
        return 13 * self.heightScale
    }
    var captionFontSize_12: CGFloat {
        return 12 * self.heightScale
    }
    var smallCaptionFontSize_10: CGFloat {
        return 10 * self.heightScale
    }
    var smallCaptionFontSize_11: CGFloat {
        return 11 * self.widthScale
    }
    
    var titleButtonFontSize_14: CGFloat {
        return 14 * self.heightScale
    }
    
    var messageFontSize_16: CGFloat {
        return 16 * self.heightScale
    }
    
    //MARK: Spacing
    var defaultHeightScreen_812: CGFloat {
        return 812 * self.heightScale
    }
    var defaultWidthScreen_375: CGFloat {
        return 375 * self.heightScale
    }
    
    var smallHorizontalMargin_4: CGFloat {
        return 4 * self.widthScale
    }
    var smallHorizontalMargin_6: CGFloat {
        return 6 * self.widthScale
    }
    var smallHorizontalMargin_7: CGFloat {
        return 7 * self.widthScale
    }
    var smallVerticalMargin_4: CGFloat {
        return 4 * self.heightScale
    }
    var smallVerticalMargin_5: CGFloat {
        return 5 * self.heightScale
    }
    var smallVerticalMargin_6: CGFloat {
        return 6 * self.heightScale
    }
    var smallVerticalMargin_7: CGFloat {
        return 7 * self.heightScale
    }
    var mediumHorizontalMargin_8: CGFloat {
        return 8 * self.widthScale
    }
    
    var mediumVerticalMargin_8: CGFloat {
        return 8 * self.heightScale
    }
    var mediumVerticalMargin_9: CGFloat {
        return 9 * self.heightScale
    }
    var normalVerticalMargin_11: CGFloat {
        return 11 * self.heightScale
    }
    var normalHorizontalMargin_11: CGFloat {
        return 11 * self.widthScale
    }
    var normalHorizontalMargin_13: CGFloat {
        return 13 * self.widthScale
    }
    var normalVerticalMargin_12: CGFloat {
        return 12 * self.heightScale
    }
    var normalVerticalMargin_13: CGFloat {
        return 13 * self.heightScale
    }
    var normalVerticalMargin_14: CGFloat {
        return 14 * self.heightScale
    }
    var normalVerticalMargin_16: CGFloat {
        return 16 * self.heightScale
    }
    
    var normalHorizontalMargin_16: CGFloat {
        return 16 * self.widthScale
    }
    var normalVerticalMargin_17: CGFloat {
        return 17 * self.heightScale
    }
    var normalHorizontalMargin_17: CGFloat {
        return 17 * self.widthScale
    }
    var normalHorizontalMargin_18: CGFloat {
        return 18 * self.widthScale
    }
    var normalVerticalMargin_20: CGFloat {
        return 20 * self.heightScale
    }
    var normalHorizontalMargin_20: CGFloat {
        return 20 * self.widthScale
    }
    
    
    var largeHorizontalMargin_24: CGFloat {
        return 24 * self.widthScale
    }
    var largeVerticalMargin_22: CGFloat {
        return 22 * self.heightScale
    }
    ///large Vertical Margi 24
    var largeVerticalMargin: CGFloat {
        return 24 * self.heightScale
    }
    var  largeVerticalMargin_28: CGFloat {
        return 28 * self.heightScale
    }
    var largeHorizontalMargin_30: CGFloat {
        return 30 * self.widthScale
    }
    var  largeVerticalMargin_30: CGFloat {
        return 30 * self.heightScale
    }
    var  largeVerticalMargin_33: CGFloat {
        return 33 * self.heightScale
    }
    var largeHorizontalMargin_32: CGFloat {
        return 32 * self.widthScale
    }
    var largeHorizontalMargin_33: CGFloat {
        return 33 * self.widthScale
    }
    var   largeHorizontalMargin_34: CGFloat {
        return 34 * self.widthScale
    }
    
    var largeVerticalMargin_32: CGFloat {
        return 32 * self.heightScale
    }
    
    var largeVerticalMargin_36: CGFloat {
        return 36 * self.heightScale
    }
    var   largeHorizontalMargin_38: CGFloat {
        return 38 * self.widthScale
    }
    var largeHorizontalMargin_42: CGFloat {
        return 42 * self.heightScale
    }
    
    var largeVerticalMargin_42: CGFloat {
        return 42 * self.heightScale
    }
    var largeVerticalMargin_45: CGFloat {
        return 45 * self.heightScale
    }
    var largeVerticalMargin_51: CGFloat {
        return 51 * self.heightScale
    }
    var largeVerticalMargin_53: CGFloat {
        return 53 * self.heightScale
     }
    var largeHorizontalMargin_53: CGFloat {
        return 53 * self.heightScale
    }
    
    var largeHorizontalMargin_56: CGFloat {
        return 56 * self.heightScale
    }
    
    var largeVerticalMargin_56: CGFloat {
        return 56 * self.heightScale
    }
    
    var largeHorizontalMargin_60: CGFloat {
        return 60 * self.widthScale
    }
    var largeHorizontalMargin_65: CGFloat {
        return 65 * self.widthScale
    }
    var largeVerticalMargin_60: CGFloat {
        return 60 * self.heightScale
    }
    var  largeVerticalMargin_69: CGFloat {
        return 69 * self.heightScale
    }
    var largeHorizontalMargin_69: CGFloat {
        return 69 * self.widthScale
    }
    var largeHorizontalMargin_75: CGFloat {
        return 75 * self.widthScale
    }
    var largeHorizontalMargin_87: CGFloat {
        return 87 * self.widthScale
    }
    var largeVertical_87: CGFloat {
        return 87 * self.heightScale
    }
    var largeHorizontalMargin_90: CGFloat {
        return 90 * self.widthScale
    }
    var largeHorizontalMargin_97: CGFloat {
        return 97 * self.widthScale
    }
    var largeVerticalMargin_75: CGFloat {
        return 75 * self.heightScale
    }
    var largeVerticalMargin_80: CGFloat {
        return 80 * self.heightScale
    }
    var largeVerticalMargin_88: CGFloat {
        return 88 * self.heightScale
    }
    var largeVerticalMargin_90: CGFloat {
        return 90 * self.heightScale
    }
    var largeHorizontalMargin_116: CGFloat {
        return 116 * self.widthScale
    }
    var largeHorizontalMargin_120: CGFloat {
        return 120 * self.widthScale
    }
    var largeHorizontalMargin_130: CGFloat {
        return 130 * self.widthScale
    }
    var largeHorizontalMargin_136: CGFloat {
        return 136 * self.widthScale
    }
    var largeHorizontalMargin_157: CGFloat {
        return 157 * self.widthScale
    }
    var largeHorizontalMargin_176: CGFloat {
        return 176 * self.widthScale
    }
    var largeHorizontalMargin_250: CGFloat {
        return 250 * self.widthScale
    }
    var largeHorizontalMargin_280: CGFloat {
        return 280 * self.widthScale
    }
    var largeHorizontalMargin_333: CGFloat {
        return 333 * self.widthScale
    }
    var largeVerticalMargin_102: CGFloat {
        return 102 * self.heightScale
    }
    var largeVerticalMargin_107: CGFloat {
        return 107 * self.heightScale
    }
    var largeVerticalMargin_110: CGFloat {
        return 110 * self.heightScale
    }
    
    var largeVerticalMargin_120: CGFloat {
        return 120 * self.heightScale
    }
    var largeVerticalMargin_143: CGFloat {
        return 143 * self.heightScale
    }
    var largeVerticalMargin_245: CGFloat {
        return 245 * self.heightScale
    }
    var largeVerticalMargin_382: CGFloat {
        return 382 * self.heightScale
    }
    var largeVerticalMargin_438: CGFloat {
        return 438 * self.heightScale
    }
    var largeVerticalMargin_264: CGFloat {
        return 264 * self.heightScale
    }
    var largeVerticalMargin_274: CGFloat {
        return 274 * self.heightScale
    }
    var largeVerticalMargin_130: CGFloat {
        return 130 * self.heightScale
    }
    var largeVerticalMargin_185: CGFloat {
        return 185 * self.heightScale
    }
    var largeVerticalMargin_193: CGFloat {
        return 193 * self.heightScale
    }
    //MARK: Button
    
    var defaultWidthButton_291: CGFloat {
        return 291 * self.widthScale
    }
    var defaultWidthButton_307: CGFloat {
        return 307 * self.widthScale
    }
    var defaultWidthButton_333: CGFloat {
        return 333 * self.widthScale
    }
    var defaultHeightButton_42: CGFloat {
        return 42 * self.heightScale
    }
    var defaultHeightButton_53: CGFloat {
        return 53 * self.heightScale
    }
    
    var defaultHeightButton_56: CGFloat {
        return 56 * self.heightScale
    }
    
    var largeWidthButton_291: CGFloat {
        return 291 * self.widthScale
    }
    
    var mediumWidthButton: CGFloat {
        return 195 * self.widthScale
    }
    
    var heightButtonAlert_36: CGFloat {
        return 36 * self.heightScale
    }
    
    var widthButtonAlert_190: CGFloat {
        return 190 * self.widthScale
    }
    
    var floatButtonHeight_56: CGFloat {
        return 56 * self.heightScale
    }
    
    var widthOptionButton_40: CGFloat {
        return 40 * self.widthScale
    }
    
    var heightOptionButton_30: CGFloat {
        return 30 * self.heightScale
    }
    
    var widthCancelButton_45: CGFloat {
        return 45 * self.widthScale
    }
    
    var heightCancelButton_25: CGFloat {
        return 25 * self.heightScale
    }
    
    //MARK: Other
    ///**152**
    var widthPatientCity:CGFloat {
        return 152 * self.widthScale
    }
    ///**132**
    var widthDateBornLabel:CGFloat {
        return 132 * self.widthScale
    }
    var widthImageLogo_94: CGFloat {
        return 94 * self.widthScale
    }
    var widthViewLogo_334:CGFloat {
        return 334 * self.widthScale
    }
    var heightViewLogoScreen_233:CGFloat{
        return 233 * self.heightScale
    }
   
    var  heightViewLogoScreen_314:CGFloat{
        return  314 * self.heightScale
    }
    var widthLogoScreen_216:CGFloat {
        return 216 * self.widthScale
    }
    var heightLogoScreen_184:CGFloat {
        return 184 * self.heightScale
    }
    var widthlogoScreen_80:CGFloat {
        return 80 * self.widthScale
    }
    
    var heightImageLogo: CGFloat {
        return 42 * self.heightScale
    }
    var widthHeightLogo_104:CGFloat {
        return 104 * self.heightScale
    }
    
    var heightLineDivider: CGFloat {
        return 1 * self.heightScale
    }
    
    var largeHeightNVBar_79: CGFloat {
        return 79 * self.heightScale
    }
    
    var widthStatusCircle: CGFloat {
        return 15 * self.widthScale
    }
    
    var smallCornerRadius: CGFloat {
        return 4 * self.heightScale
    }
    
    var mediumCornerRadius: CGFloat {
        return 6 * self.heightScale
    }
    
    var normalCornerRadius: CGFloat {
        return 8 * self.heightScale
    }
    
    var superCornerRadius: CGFloat {
        return 20 * self.heightScale
    }
    var superCornerRadius_28: CGFloat {
        return 28 * self.heightScale
    }
    var superCornerRadius_51: CGFloat {
        return 51 * self.heightScale
    }
    var widthOptionMenu: CGFloat {
        return 280 * self.widthScale
    }
    
    var topMarginOptionMenu_53: CGFloat {
        return 53 * self.heightScale
    }
    
    var widthFloatButton_75: CGFloat {
        return 75 * self.heightScale
    }
    
    var heightPatientInfoResult_77: CGFloat {
        return 77 * self.heightScale
    }
    
    var widthAlertDeleteDiagnose_254: CGFloat {
        return 254 * self.widthScale
    }
    
    var largeWidthAlertAnnoucement_311: CGFloat {
        return 311 * self.widthScale
    }
    
    var heightAlertDeleteDiagnose_235: CGFloat {
        return 235 * self.heightScale
    }
    
    var heightExtendNavigationBar_55: CGFloat {
        return 55 * self.heightScale
    }
    
    var widthChartView_363: CGFloat {
        return 363 * self.widthScale
    }
    
    //MARK: Textfield
    
    var defaultWidthTextfield_307: CGFloat {
        return 307 * self.widthScale
    }
    
    var widthTextfieldDOB_100: CGFloat {
        return 100 * self.widthScale
    }
    
    var widthTextfieldCity: CGFloat {
        return 125 * self.widthScale
    }
    
    var widthFROMANDTOTextField: CGFloat {
        return 132 * self.widthScale
    }
    var widthLogoTextField_132:CGFloat {
        return 132 * self.widthScale
    }
    
    var defaultHeightTextField_56: CGFloat {
        return 56 * self.heightScale
    }
    
    //MARK: SIDE MENU
    var widthSideMenu: CGFloat {
        return 300 * self.widthScale
    }
    
    var widthUserImage: CGFloat {
        return 40 * self.heightScale
    }
    
    var widthIconSideMenu: CGFloat {
        return 24 * self.widthScale
    }
    
    var heightIconSideMenu: CGFloat {
        return 18 * self.heightScale
    }
    
    var heightNoticeIcon: CGFloat {
        return 16 * self.heightScale
    }
    
    //MARK: Segment
    var widthCustomSegment: CGFloat {
        return 327 * self.widthScale
    }
    
    var heightCustomSegment: CGFloat {
        return 36 * self.heightScale
    }
    
    //MARK: Message
    var widthMessage: CGFloat {
        return 265 * self.widthScale
    }
    
    var edgeInsetLabel: CGFloat {
        return 10 * self.heightScale
    }
    
    //MARK: SEARCH
    var heightContainsViewSearchBar: CGFloat {
        return 50 * self.heightScale
    }
    
    var heightSearchBar: CGFloat {
        return 45 * self.heightScale
    }
    
    //MARK: CHART
    var heightPieChart: CGFloat {
        return 311 * self.heightScale
    }
}
//s
