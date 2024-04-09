#include <stdlib.mqh>
#include <stderror.mqh>

//    indicator settings
#property indicator_chart_window
#property indicator_buffers 103

//...........Buffers for Buy Hammer pattern detection for each band...........//

//Buffer1 for Bollinger Band 100 - Hammer
#property indicator_type2 DRAW_ARROW
#property indicator_width2 5
#property indicator_color2 0xFFAA00

//Buffer2 for Bollinger Band 200 - Hammer
#property indicator_type3 DRAW_ARROW
#property indicator_width3 5
#property indicator_color3 0xFFAA00

//Buffer3 for Bollinger Band 400 - Hammer
#property indicator_type4 DRAW_ARROW
#property indicator_width4 5
#property indicator_color4 0xFFAA00

//...........Buffers for Buy Inverted Hammer pattern detection for each band...........//

//Buffer4 for Bollinger Band 100 - Inverted Hammer
#property indicator_type5 DRAW_ARROW
#property indicator_width5 5
#property indicator_color5 0xFFAA00

//Buffer5 for Bollinger Band 200 - Inverted Hammer
#property indicator_type6 DRAW_ARROW
#property indicator_width6 5
#property indicator_color6 0xFFAA00

//Buffer6 for Bollinger Band 400 - Inverted Hammer
#property indicator_type7 DRAW_ARROW
#property indicator_width7 5
#property indicator_color7 0xFFAA00

//...........Buffers for Buy Doji pattern detection for each band...........//

//Buffer7 for Bollinger Band 100 - Doji
#property indicator_type8 DRAW_ARROW
#property indicator_width8 5
#property indicator_color8 0xFFAA00

//Buffer8 for Bollinger Band 200 - Doji
#property indicator_type9 DRAW_ARROW
#property indicator_width9 5
#property indicator_color9 0xFFAA00

//Buffer9 for Bollinger Band 400 - Doji
#property indicator_type10 DRAW_ARROW
#property indicator_width10 5
#property indicator_color10 0xFFAA00

//...........Buffers for Buy Long-Legged Doji pattern detection for each band...........//

//Buffer10 for Bollinger Band 100 - Long-Legged Doji
#property indicator_type11 DRAW_ARROW
#property indicator_width11 5
#property indicator_color11 0xFFAA00

//Buffer11 for Bollinger Band 200 - Long-Legged Doji
#property indicator_type12 DRAW_ARROW
#property indicator_width12 5
#property indicator_color12 0xFFAA00

//Buffer12 for Bollinger Band 400 - Long-Legged Doji
#property indicator_type13 DRAW_ARROW
#property indicator_width13 5
#property indicator_color13 0xFFAA00

//...........Buffers for Buy Morning Star pattern detection for each band...........//

//Buffer13 for Bollinger Band 100 - Morning Star
#property indicator_type14 DRAW_ARROW
#property indicator_width14 5
#property indicator_color14 0xFFAA00

//Buffer14 for Bollinger Band 200 - Morning Star
#property indicator_type15 DRAW_ARROW
#property indicator_width15 5
#property indicator_color15 0xFFAA00

//Buffer15 for Bollinger Band 400 - Morning Star
#property indicator_type16 DRAW_ARROW
#property indicator_width16 5
#property indicator_color16 0xFFAA00

//...........Buffers for Buy Evening Star pattern detection for each band...........//

//Buffer16 for Bollinger Band 100 - Evening Star
#property indicator_type17 DRAW_ARROW
#property indicator_width17 5
#property indicator_color17 0xFFAA00

//Buffer17 for Bollinger Band 200 - Evening Star
#property indicator_type18 DRAW_ARROW
#property indicator_width18 5
#property indicator_color18 0xFFAA00

//Buffer18 for Bollinger Band 400 - Evening Star
#property indicator_type19 DRAW_ARROW
#property indicator_width19 5
#property indicator_color19 0xFFAA00
//...........Buffers for Buy Bullish Engulfing pattern detection for each band...........//

//Buffer19 for Bollinger Band 100 - Bullish Engulfing
#property indicator_type20 DRAW_ARROW
#property indicator_width20 5
#property indicator_color20 0xFFAA00

//Buffer20 for Bollinger Band 200 - Bullish Engulfing
#property indicator_type21 DRAW_ARROW
#property indicator_width21 5
#property indicator_color21 0xFFAA00

//Buffer21 for Bollinger Band 400 - Bullish Engulfing
#property indicator_type22 DRAW_ARROW
#property indicator_width22 5
#property indicator_color22 0xFFAA00

//...........Buffers for Buy Bearish Engulfing pattern detection for each band...........//

//Buffer22 for Bollinger Band 100 - Bearish Engulfing
#property indicator_type23 DRAW_ARROW
#property indicator_width23 5
#property indicator_color23 0xFFAA00

//Buffer23 for Bollinger Band 200 - Bearish Engulfing
#property indicator_type24 DRAW_ARROW
#property indicator_width24 5
#property indicator_color24 0xFFAA00

//Buffer24 for Bollinger Band 400 - Bearish Engulfing
#property indicator_type25 DRAW_ARROW
#property indicator_width25 5
#property indicator_color25 0xFFAA00

//...........Buffers for Buy Bullish Piercing Pattern detection for each band...........//

//Buffer25 for Bollinger Band 100 - Bullish Piercing Pattern
#property indicator_type26 DRAW_ARROW
#property indicator_width26 5
#property indicator_color26 0xFFAA00

//Buffer26 for Bollinger Band 200 - Bullish Piercing Pattern
#property indicator_type27 DRAW_ARROW
#property indicator_width27 5
#property indicator_color27 0xFFAA00

//Buffer27 for Bollinger Band 400 - Bullish Piercing Pattern
#property indicator_type28 DRAW_ARROW
#property indicator_width28 5
#property indicator_color28 0xFFAA00

//...........Buffers for Buy Bearish Dark Cloud Cover pattern detection for each band...........//

//Buffer28 for Bollinger Band 100 - Bearish Dark Cloud Cover
#property indicator_type29 DRAW_ARROW
#property indicator_width29 5
#property indicator_color29 0xFFAA00

//Buffer29 for Bollinger Band 200 - Bearish Dark Cloud Cover
#property indicator_type30 DRAW_ARROW
#property indicator_width30 5
#property indicator_color30 0xFFAA00

//Buffer30 for Bollinger Band 400 - Bearish Dark Cloud Cover
#property indicator_type31 DRAW_ARROW
#property indicator_width31 5
#property indicator_color31 0xFFAA00

//...........Buffers for Buy Bullish Harami pattern detection for each band...........//

//Buffer31 for Bollinger Band 100 - Bullish Harami
#property indicator_type32 DRAW_ARROW
#property indicator_width32 5
#property indicator_color32 0xFFAA00

//Buffer32 for Bollinger Band 200 - Bullish Harami
#property indicator_type33 DRAW_ARROW
#property indicator_width33 5
#property indicator_color33 0xFFAA00

//Buffer33 for Bollinger Band 400 - Bullish Harami
#property indicator_type34 DRAW_ARROW
#property indicator_width34 5
#property indicator_color34 0xFFAA00

//...........Buffers for Buy Bearish Harami pattern detection for each band...........//

//Buffer34 for Bollinger Band 100 - Bearish Harami
#property indicator_type35 DRAW_ARROW
#property indicator_width35 5
#property indicator_color35 0xFFAA00

//Buffer35 for Bollinger Band 200 - Bearish Harami
#property indicator_type36 DRAW_ARROW
#property indicator_width36 5
#property indicator_color36 0xFFAA00

//Buffer36 for Bollinger Band 400 - Bearish Harami
#property indicator_type37 DRAW_ARROW
#property indicator_width37 5
#property indicator_color37 0xFFAA00

//...........Buffers for Buy Dragon Fly Doji pattern detection for each band...........//

//Buffer37 for Bollinger Band 100 - Dragon Fly Doji
#property indicator_type38 DRAW_ARROW
#property indicator_width38 5
#property indicator_color38 0xFFAA00

//Buffer38 for Bollinger Band 200 - Dragon Fly Doji
#property indicator_type39 DRAW_ARROW
#property indicator_width39 5
#property indicator_color39 0xFFAA00

//Buffer39 for Bollinger Band 400 - Dragon Fly Doji
#property indicator_type40 DRAW_ARROW
#property indicator_width40 5
#property indicator_color40 0xFFAA00

//...........Buffers for Buy Spinning Top pattern detection for each band...........//

//Buffer40 for Bollinger Band 100 - Spinning Top
#property indicator_type41 DRAW_ARROW
#property indicator_width41 5
#property indicator_color41 0xFFAA00

//Buffer41 for Bollinger Band 200 - Spinning Top
#property indicator_type42 DRAW_ARROW
#property indicator_width42 5
#property indicator_color42 0xFFAA00

//Buffer42 for Bollinger Band 400 - Spinning Top
#property indicator_type43 DRAW_ARROW
#property indicator_width43 5
#property indicator_color43 0xFFAA00

//...........Buffers for Buy Bullish Marubozu pattern detection for each band...........//

//Buffer43 for Bollinger Band 100 - Bullish Marubozu
#property indicator_type44 DRAW_ARROW
#property indicator_width44 5
#property indicator_color44 0xFFAA00

//Buffer44 for Bollinger Band 200 - Bullish Marubozu
#property indicator_type45 DRAW_ARROW
#property indicator_width45 5
#property indicator_color45 0xFFAA00

//Buffer45 for Bollinger Band 400 - Bullish Marubozu
#property indicator_type46 DRAW_ARROW
#property indicator_width46 5
#property indicator_color46 0xFFAA00

//...........Buffers for Buy Bearish Marubozu pattern detection for each band...........//

//Buffer46 for Bollinger Band 100 - Bearish Marubozu Doji
#property indicator_type47 DRAW_ARROW
#property indicator_width47 5
#property indicator_color47 0xFFAA00

//Buffer47 for Bollinger Band 200 - Bearish Marubozu Doji
#property indicator_type48 DRAW_ARROW
#property indicator_width48 5
#property indicator_color48 0xFFAA00

//Buffer48 for Bollinger Band 400 - Bearish Marubozu Doji
#property indicator_type49 DRAW_ARROW
#property indicator_width49 5
#property indicator_color49 0xFFAA00

//...........Buffers for Buy Grave Stone Doji pattern detection for each band...........//

//Buffer49 for Bollinger Band 100 - Grave Stone Doji
#property indicator_type50 DRAW_ARROW
#property indicator_width50 5
#property indicator_color50 0xFFAA00

//Buffer50 for Bollinger Band 200 - Grave Stone Doji
#property indicator_type51 DRAW_ARROW
#property indicator_width51 5
#property indicator_color51 0xFFAA00

//Buffer51 for Bollinger Band 400 - Grave Stone Doji
#property indicator_type52 DRAW_ARROW
#property indicator_width52 5
#property indicator_color52 0xFFAA00
//...........Buffers for Sell Hammer pattern detection for each band...........//

//Buffer52 for Bollinger Band 100 - Hammer
#property indicator_type53 DRAW_ARROW
#property indicator_width53 5
#property indicator_color53 0x0D00FF

//Buffer53 for Bollinger Band 200 - Hammer
#property indicator_type54 DRAW_ARROW
#property indicator_width54 5
#property indicator_color54 0x0D00FF

//Buffer54 for Bollinger Band 400 - Hammer
#property indicator_type55 DRAW_ARROW
#property indicator_width55 5
#property indicator_color55 0x0D00FF

//...........Buffers for Sell InvertedHammer pattern detection for each band...........//

//Buffer55 for Bollinger Band 100 - InvertedHammer
#property indicator_type56 DRAW_ARROW
#property indicator_width56 5
#property indicator_color56 0x0D00FF

//Buffer56 for Bollinger Band 200 - InvertedHammer
#property indicator_type57 DRAW_ARROW
#property indicator_width57 5
#property indicator_color57 0x0D00FF

//Buffer57 for Bollinger Band 400 - InvertedHammer
#property indicator_type58 DRAW_ARROW
#property indicator_width58 5
#property indicator_color58 0x0D00FF

//...........Buffers for Sell Doji pattern detection for each band...........//

//Buffer58 for Bollinger Band 100 - Doji
#property indicator_type59 DRAW_ARROW
#property indicator_width59 5
#property indicator_color59 0x0D00FF

//Buffer59 for Bollinger Band 200 - Doji
#property indicator_type60 DRAW_ARROW
#property indicator_width60 5
#property indicator_color60 0x0D00FF

//Buffer60 for Bollinger Band 400 - Doji
#property indicator_type61 DRAW_ARROW
#property indicator_width61 5
#property indicator_color61 0x0D00FF

//...........Buffers for Sell Long_Legged_Doji pattern detection for each band...........//

//Buffer61 for Bollinger Band 100 - Long_Legged_Doji
#property indicator_type62 DRAW_ARROW
#property indicator_width62 5
#property indicator_color62 0x0D00FF

//Buffer62 for Bollinger Band 200 - Long_Legged_Doji
#property indicator_type63 DRAW_ARROW
#property indicator_width63 5
#property indicator_color63 0x0D00FF

//Buffer63 for Bollinger Band 400 - Long_Legged_Doji
#property indicator_type64 DRAW_ARROW
#property indicator_width64 5
#property indicator_color64 0x0D00FF
//...........Buffers for Sell Morning_Star pattern detection for each band...........//

//Buffer64 for Bollinger Band 100 - Morning_Star
#property indicator_type65 DRAW_ARROW
#property indicator_width65 5
#property indicator_color65 0x0D00FF

//Buffer65 for Bollinger Band 200 - Morning_Star
#property indicator_type66 DRAW_ARROW
#property indicator_width66 5
#property indicator_color66 0x0D00FF

//Buffer66 for Bollinger Band 400 - Morning_Star
#property indicator_type67 DRAW_ARROW
#property indicator_width67 5
#property indicator_color67 0x0D00FF

//...........Buffers for Sell Evening_Star pattern detection for each band...........//

//Buffer67 for Bollinger Band 100 - Evening_Star
#property indicator_type68 DRAW_ARROW
#property indicator_width68 5
#property indicator_color68 0x0D00FF

//Buffer68 for Bollinger Band 200 - Evening_Star
#property indicator_type69 DRAW_ARROW
#property indicator_width69 5
#property indicator_color69 0x0D00FF

//Buffer69 for Bollinger Band 400 - Evening_Star
#property indicator_type70 DRAW_ARROW
#property indicator_width70 5
#property indicator_color70 0x0D00FF

//...........Buffers for Sell Bullish_Engulfing pattern detection for each band...........//

//Buffer70 for Bollinger Band 100 - Bullish_Engulfing
#property indicator_type71 DRAW_ARROW
#property indicator_width71 5
#property indicator_color71 0x0D00FF

//Buffer71 for Bollinger Band 200 - Bullish_Engulfing
#property indicator_type72 DRAW_ARROW
#property indicator_width72 5
#property indicator_color72 0x0D00FF

//Buffer72 for Bollinger Band 400 - Bullish_Engulfing
#property indicator_type73 DRAW_ARROW
#property indicator_width73 5
#property indicator_color73 0x0D00FF

//...........Buffers for Sell Bearish_Engulfing pattern detection for each band...........//

//Buffer73 for Bollinger Band 100 - Bearish_Engulfing
#property indicator_type74 DRAW_ARROW
#property indicator_width74 5
#property indicator_color74 0x0D00FF

//Buffer74 for Bollinger Band 200 - Bearish_Engulfing
#property indicator_type75 DRAW_ARROW
#property indicator_width75 5
#property indicator_color75 0x0D00FF

//Buffer75 for Bollinger Band 400 - Bearish_Engulfing
#property indicator_type76 DRAW_ARROW
#property indicator_width76 5
#property indicator_color76 0x0D00FF
//...........Buffers for Sell Bullish_Piercing_Pattern pattern detection for each band...........//

//Buffer76 for Bollinger Band 100 - Bullish_Piercing_Pattern
#property indicator_type77 DRAW_ARROW
#property indicator_width77 5
#property indicator_color77 0x0D00FF

//Buffer77 for Bollinger Band 200 - Bullish_Piercing_Pattern
#property indicator_type78 DRAW_ARROW
#property indicator_width78 5
#property indicator_color78 0x0D00FF

//Buffer78 for Bollinger Band 400 - Bullish_Piercing_Pattern
#property indicator_type79 DRAW_ARROW
#property indicator_width79 5
#property indicator_color79 0x0D00FF

//...........Buffers for Sell Bearish_Dark_Cloud pattern detection for each band...........//

//Buffer79 for Bollinger Band 100 - Bearish_Dark_Cloud
#property indicator_type80 DRAW_ARROW
#property indicator_width80 5
#property indicator_color80 0x0D00FF

//Buffer80 for Bollinger Band 200 - Bearish_Dark_Cloud
#property indicator_type81 DRAW_ARROW
#property indicator_width81 5
#property indicator_color81 0x0D00FF

//Buffer81 for Bollinger Band 400 - Bearish_Dark_Cloud
#property indicator_type82 DRAW_ARROW
#property indicator_width82 5
#property indicator_color82 0x0D00FF

//...........Buffers for Sell Bullish_Harami pattern detection for each band...........//

//Buffer82 for Bollinger Band 100 - Bullish_Harami
#property indicator_type83 DRAW_ARROW
#property indicator_width83 5
#property indicator_color83 0x0D00FF

//Buffer83 for Bollinger Band 200 - Bullish_Harami
#property indicator_type84 DRAW_ARROW
#property indicator_width84 5
#property indicator_color84 0x0D00FF

//Buffer84 for Bollinger Band 400 - Bullish_Harami
#property indicator_type85 DRAW_ARROW
#property indicator_width85 5
#property indicator_color85 0x0D00FF

//...........Buffers for Sell Bearish_Harami pattern detection for each band...........//

//Buffer85 for Bollinger Band 100 - Bearish_Harami
#property indicator_type86 DRAW_ARROW
#property indicator_width86 5
#property indicator_color86 0x0D00FF

//Buffer86 for Bollinger Band 200 - Bearish_Harami
#property indicator_type87 DRAW_ARROW
#property indicator_width87 5
#property indicator_color87 0x0D00FF

//Buffer87 for Bollinger Band 400 - Bearish_Harami
#property indicator_type88 DRAW_ARROW
#property indicator_width88 5
#property indicator_color88 0x0D00FF

//...........Buffers for Sell Dragon_Fly_Doji pattern detection for each band...........//

//Buffer88 for Bollinger Band 100 - Dragon_Fly_Doji
#property indicator_type89 DRAW_ARROW
#property indicator_width89 5
#property indicator_color89 0x0D00FF

//Buffer89 for Bollinger Band 200 - Dragon_Fly_Doji
#property indicator_type90 DRAW_ARROW
#property indicator_width90 5
#property indicator_color90 0x0D00FF

//Buffer90 for Bollinger Band 400 - Dragon_Fly_Doji
#property indicator_type91 DRAW_ARROW
#property indicator_width91 5
#property indicator_color91 0x0D00FF

//...........Buffers for Sell Spinning_Top pattern detection for each band...........//

//Buffer91 for Bollinger Band 100 - Spinning_Top
#property indicator_type92 DRAW_ARROW
#property indicator_width92 5
#property indicator_color92 0x0D00FF

//Buffer92 for Bollinger Band 200 - Spinning_Top
#property indicator_type93 DRAW_ARROW
#property indicator_width93 5
#property indicator_color93 0x0D00FF

//Buffer93 for Bollinger Band 400 - Spinning_Top
#property indicator_type94 DRAW_ARROW
#property indicator_width94 5
#property indicator_color94 0x0D00FF

//...........Buffers for Sell Bullish_Marubozu pattern detection for each band...........//

//Buffer94 for Bollinger Band 100 - Bullish_Marubozu
#property indicator_type95 DRAW_ARROW
#property indicator_width95 5
#property indicator_color95 0x0D00FF

//Buffer95 for Bollinger Band 200 - Bullish_Marubozu
#property indicator_type96 DRAW_ARROW
#property indicator_width96 5
#property indicator_color96 0x0D00FF

//Buffer96 for Bollinger Band 400 - Bullish_Marubozu
#property indicator_type97 DRAW_ARROW
#property indicator_width97 5
#property indicator_color97 0x0D00FF

//...........Buffers for Sell Bearish_Marubozu pattern detection for each band...........//

//Buffer97 for Bollinger Band 100 - Bearish_Marubozu
#property indicator_type98 DRAW_ARROW
#property indicator_width98 5
#property indicator_color98 0x0D00FF

//Buffer98 for Bollinger Band 200 - Bearish_Marubozu
#property indicator_type99 DRAW_ARROW
#property indicator_width99 5
#property indicator_color99 0x0D00FF

//Buffer99 for Bollinger Band 400 - Bearish_Marubozu
#property indicator_type100 DRAW_ARROW
#property indicator_width100 5
#property indicator_color100 0x0D00FF

//...........Buffers for Sell Grave_Stone_Doji pattern detection for each band...........//

//Buffer100 for Bollinger Band 100 - Grave_Stone_Doji
#property indicator_type101 DRAW_ARROW
#property indicator_width101 5
#property indicator_color101 0x0D00FF

//Buffer101 for Bollinger Band 200 - Grave_Stone_Doji
#property indicator_type102 DRAW_ARROW
#property indicator_width102 5
#property indicator_color102 0x0D00FF

//Buffer102 for Bollinger Band 400 - Grave_Stone_Doji
#property indicator_type103 DRAW_ARROW
#property indicator_width103 5
#property indicator_color103 0x0D00FF

// Indicator input parameters
int PipOffsetBuy = 0;
double GetSignalPriceBuy(const double& close)
{
    // Calculate the signal price below the low of the candle
    double GetSignalPriceBuy = PipOffsetBuy * Point;
    double signalPriceBuy = close - GetSignalPriceBuy;
    return signalPriceBuy;
}
//    indicator buffers
double Buffer1[];
double Buffer2[];
double Buffer3[];
double Buffer4[];
double Buffer5[];
double Buffer6[];
double Buffer7[];
double Buffer8[];
double Buffer9[];
double Buffer10[];
double Buffer11[];
double Buffer12[];
double Buffer13[];
double Buffer14[];
double Buffer15[];
double Buffer16[];
double Buffer17[];
double Buffer18[];
double Buffer19[];
double Buffer20[];
double Buffer21[];
double Buffer22[];
double Buffer23[];
double Buffer24[];
double Buffer25[];
double Buffer26[];
double Buffer27[];
double Buffer28[];
double Buffer29[];
double Buffer30[];
double Buffer31[];
double Buffer32[];
double Buffer33[];
double Buffer34[];
double Buffer35[];
double Buffer36[];
double Buffer37[];
double Buffer38[];
double Buffer39[];
double Buffer40[];
double Buffer41[];
double Buffer42[];
double Buffer43[];
double Buffer44[];
double Buffer45[];
double Buffer46[];
double Buffer47[];
double Buffer48[];
double Buffer49[];
double Buffer50[];
double Buffer51[];
double Buffer52[];
double Buffer53[];
double Buffer54[];
double Buffer55[];
double Buffer56[];
double Buffer57[];
double Buffer58[];
double Buffer59[];
double Buffer60[];
double Buffer61[];
double Buffer62[];
double Buffer63[];
double Buffer64[];
double Buffer65[];
double Buffer66[];
double Buffer67[];
double Buffer68[];
double Buffer69[];
double Buffer70[];
double Buffer71[];
double Buffer72[];
double Buffer73[];
double Buffer74[];
double Buffer75[];
double Buffer76[];
double Buffer77[];
double Buffer78[];
double Buffer79[];
double Buffer80[];
double Buffer81[];
double Buffer82[];
double Buffer83[];
double Buffer84[];
double Buffer85[];
double Buffer86[];
double Buffer87[];
double Buffer88[];
double Buffer89[];
double Buffer90[];
double Buffer91[];
double Buffer92[];
double Buffer93[];
double Buffer94[];
double Buffer95[];
double Buffer96[];
double Buffer97[];
double Buffer98[];
double Buffer99[];
double Buffer100[];
double Buffer101[];
double Buffer102[];

datetime time_alert; //used when sending alert
extern bool Audible_Alerts = true;
extern bool Push_Notifications = true;
double myPoint; //initialized in OnInit

void myAlert(string type, string message)
  {
   int handle;
   if(type == "print")
      Print(message);
   else if(type == "error")
     {
      Print(type+" | Indicator01 @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
     }
   else if(type == "order")
     {
     }
   else if(type == "modify")
     {
     }
   else if(type == "indicator")
     {
      Print(type+" | Indicator01 @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
      if(Audible_Alerts) Alert(type+" | Indicator01 @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
      handle = FileOpen("Indicator01.txt", FILE_TXT|FILE_READ|FILE_WRITE|FILE_SHARE_READ|FILE_SHARE_WRITE, ';');
      if(handle != INVALID_HANDLE)
        {
         FileSeek(handle, 0, SEEK_END);
         FileWrite(handle, type+" | Indicator01 @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
         FileClose(handle);
        }
      if(Push_Notifications) SendNotification(type+" | Indicator01 @ "+Symbol()+","+IntegerToString(Period())+" | "+message);
     }
  }

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {   
   IndicatorBuffers(51);
   
   SetIndexBuffer(1, Buffer1);
   SetIndexBuffer(2, Buffer2);
   SetIndexBuffer(3, Buffer3);
   SetIndexBuffer(4, Buffer4);
   SetIndexBuffer(5, Buffer5);
   SetIndexBuffer(6, Buffer6);
   SetIndexBuffer(7, Buffer7);
   SetIndexBuffer(8, Buffer8);
   SetIndexBuffer(9, Buffer9);
   SetIndexBuffer(10,Buffer10);
   SetIndexBuffer(11, Buffer11);
   SetIndexBuffer(12, Buffer12);
   SetIndexBuffer(13, Buffer13);
   SetIndexBuffer(14, Buffer14);
   SetIndexBuffer(15, Buffer15);
   SetIndexBuffer(16, Buffer16);
   SetIndexBuffer(17, Buffer17);
   SetIndexBuffer(18, Buffer18);
   SetIndexBuffer(19, Buffer19);
   SetIndexBuffer(20, Buffer20);
   SetIndexBuffer(21, Buffer21);
   SetIndexBuffer(22, Buffer22);
   SetIndexBuffer(23, Buffer23);
   SetIndexBuffer(24, Buffer24);
   SetIndexBuffer(25, Buffer25);
   SetIndexBuffer(26, Buffer26);
   SetIndexBuffer(27, Buffer27);
   SetIndexBuffer(28, Buffer28);
   SetIndexBuffer(29, Buffer29);
   SetIndexBuffer(30, Buffer30);
   SetIndexBuffer(31, Buffer31);
   SetIndexBuffer(32, Buffer32);
   SetIndexBuffer(33, Buffer33);
   SetIndexBuffer(34, Buffer34);
   SetIndexBuffer(35, Buffer35);
   SetIndexBuffer(36, Buffer36);
   SetIndexBuffer(37, Buffer37);
   SetIndexBuffer(38, Buffer38);
   SetIndexBuffer(39, Buffer39);
   SetIndexBuffer(40, Buffer40);
   SetIndexBuffer(41, Buffer41);
   SetIndexBuffer(42, Buffer42);
   SetIndexBuffer(43, Buffer43);
   SetIndexBuffer(44, Buffer44);
   SetIndexBuffer(45, Buffer45);
   SetIndexBuffer(46, Buffer46);
   SetIndexBuffer(47, Buffer47);
   SetIndexBuffer(48, Buffer48);
   SetIndexBuffer(49, Buffer49);
   SetIndexBuffer(50, Buffer50);
   SetIndexBuffer(51, Buffer51);
   SetIndexBuffer(52, Buffer52);
   SetIndexBuffer(53, Buffer53);
   SetIndexBuffer(54, Buffer54);
   SetIndexBuffer(55, Buffer55);
   SetIndexBuffer(56, Buffer56);
   SetIndexBuffer(57, Buffer57);
   SetIndexBuffer(58, Buffer58);
   SetIndexBuffer(59, Buffer59);
   SetIndexBuffer(60, Buffer60);
   SetIndexBuffer(61, Buffer61);
   SetIndexBuffer(62, Buffer62);
   SetIndexBuffer(63, Buffer63);
   SetIndexBuffer(64, Buffer64);
   SetIndexBuffer(65, Buffer65);
   SetIndexBuffer(66, Buffer66);
   SetIndexBuffer(67, Buffer67);
   SetIndexBuffer(68, Buffer68);
   SetIndexBuffer(69, Buffer69);
   SetIndexBuffer(70, Buffer70);
   SetIndexBuffer(71, Buffer71);
   SetIndexBuffer(72, Buffer72);
   SetIndexBuffer(73, Buffer73);
   SetIndexBuffer(74, Buffer74);
   SetIndexBuffer(75, Buffer75);
   SetIndexBuffer(76, Buffer76);
   SetIndexBuffer(77, Buffer77);
   SetIndexBuffer(78, Buffer78);
   SetIndexBuffer(79, Buffer79);
   SetIndexBuffer(80, Buffer80);
   SetIndexBuffer(81, Buffer81);
   SetIndexBuffer(82, Buffer82);
   SetIndexBuffer(83, Buffer83);
   SetIndexBuffer(84, Buffer84);
   SetIndexBuffer(85, Buffer85);
   SetIndexBuffer(86, Buffer86);
   SetIndexBuffer(87, Buffer87);
   SetIndexBuffer(88, Buffer88);
   SetIndexBuffer(89, Buffer89);
   SetIndexBuffer(90, Buffer90);
   SetIndexBuffer(91, Buffer91);
   SetIndexBuffer(92, Buffer92);
   SetIndexBuffer(93, Buffer93);
   SetIndexBuffer(94, Buffer94);
   SetIndexBuffer(95, Buffer95);
   SetIndexBuffer(96, Buffer96);
   SetIndexBuffer(97, Buffer97);
   SetIndexBuffer(98, Buffer98);
   SetIndexBuffer(99, Buffer99);
   SetIndexBuffer(100, Buffer100);
   SetIndexBuffer(101, Buffer101);
   SetIndexBuffer(102, Buffer102);
   
   SetIndexEmptyValue(1, EMPTY_VALUE);
   SetIndexEmptyValue(2, EMPTY_VALUE);
   SetIndexEmptyValue(3, EMPTY_VALUE);
   SetIndexEmptyValue(4, EMPTY_VALUE);
   SetIndexEmptyValue(5, EMPTY_VALUE);
   SetIndexEmptyValue(6, EMPTY_VALUE);
   SetIndexEmptyValue(7, EMPTY_VALUE);
   SetIndexEmptyValue(8, EMPTY_VALUE);
   SetIndexEmptyValue(9, EMPTY_VALUE);
   SetIndexEmptyValue(10, EMPTY_VALUE);
   SetIndexEmptyValue(11, EMPTY_VALUE);
   SetIndexEmptyValue(12, EMPTY_VALUE);
   SetIndexEmptyValue(13, EMPTY_VALUE);
   SetIndexEmptyValue(14, EMPTY_VALUE);
   SetIndexEmptyValue(15, EMPTY_VALUE);
   SetIndexEmptyValue(16, EMPTY_VALUE);
   SetIndexEmptyValue(17, EMPTY_VALUE);
   SetIndexEmptyValue(18, EMPTY_VALUE);
   SetIndexEmptyValue(19, EMPTY_VALUE);
   SetIndexEmptyValue(20, EMPTY_VALUE);
   SetIndexEmptyValue(21, EMPTY_VALUE);
   SetIndexEmptyValue(22, EMPTY_VALUE);
   SetIndexEmptyValue(23, EMPTY_VALUE);
   SetIndexEmptyValue(24, EMPTY_VALUE);
   SetIndexEmptyValue(25, EMPTY_VALUE);
   SetIndexEmptyValue(26, EMPTY_VALUE);
   SetIndexEmptyValue(27, EMPTY_VALUE);
   SetIndexEmptyValue(28, EMPTY_VALUE);
   SetIndexEmptyValue(29, EMPTY_VALUE);
   SetIndexEmptyValue(30, EMPTY_VALUE);
   SetIndexEmptyValue(31, EMPTY_VALUE);
   SetIndexEmptyValue(32, EMPTY_VALUE);
   SetIndexEmptyValue(33, EMPTY_VALUE);
   SetIndexEmptyValue(34, EMPTY_VALUE);
   SetIndexEmptyValue(35, EMPTY_VALUE);
   SetIndexEmptyValue(36, EMPTY_VALUE);
   SetIndexEmptyValue(37, EMPTY_VALUE);
   SetIndexEmptyValue(38, EMPTY_VALUE);
   SetIndexEmptyValue(39, EMPTY_VALUE);
   SetIndexEmptyValue(40, EMPTY_VALUE);
   SetIndexEmptyValue(41, EMPTY_VALUE);
   SetIndexEmptyValue(42, EMPTY_VALUE);
   SetIndexEmptyValue(43, EMPTY_VALUE);
   SetIndexEmptyValue(44, EMPTY_VALUE);
   SetIndexEmptyValue(45, EMPTY_VALUE);
   SetIndexEmptyValue(46, EMPTY_VALUE);
   SetIndexEmptyValue(47, EMPTY_VALUE);
   SetIndexEmptyValue(48, EMPTY_VALUE);
   SetIndexEmptyValue(49, EMPTY_VALUE);
   SetIndexEmptyValue(50, EMPTY_VALUE);
   SetIndexEmptyValue(51, EMPTY_VALUE);
   SetIndexEmptyValue(52, EMPTY_VALUE);
   SetIndexEmptyValue(53, EMPTY_VALUE);
   SetIndexEmptyValue(54, EMPTY_VALUE);
   SetIndexEmptyValue(55, EMPTY_VALUE);
   SetIndexEmptyValue(56, EMPTY_VALUE);
   SetIndexEmptyValue(57, EMPTY_VALUE);
   SetIndexEmptyValue(58, EMPTY_VALUE);
   SetIndexEmptyValue(59, EMPTY_VALUE);
   SetIndexEmptyValue(60, EMPTY_VALUE);
   SetIndexEmptyValue(61, EMPTY_VALUE);
   SetIndexEmptyValue(62, EMPTY_VALUE);
   SetIndexEmptyValue(63, EMPTY_VALUE);
   SetIndexEmptyValue(64, EMPTY_VALUE);
   SetIndexEmptyValue(65, EMPTY_VALUE);
   SetIndexEmptyValue(66, EMPTY_VALUE);
   SetIndexEmptyValue(67, EMPTY_VALUE);
   SetIndexEmptyValue(68, EMPTY_VALUE);
   SetIndexEmptyValue(69, EMPTY_VALUE);
   SetIndexEmptyValue(70, EMPTY_VALUE);
   SetIndexEmptyValue(71, EMPTY_VALUE);
   SetIndexEmptyValue(72, EMPTY_VALUE);
   SetIndexEmptyValue(73, EMPTY_VALUE);
   SetIndexEmptyValue(74, EMPTY_VALUE);
   SetIndexEmptyValue(75, EMPTY_VALUE);
   SetIndexEmptyValue(76, EMPTY_VALUE);
   SetIndexEmptyValue(77, EMPTY_VALUE);
   SetIndexEmptyValue(78, EMPTY_VALUE);
   SetIndexEmptyValue(79, EMPTY_VALUE);
   SetIndexEmptyValue(80, EMPTY_VALUE);
   SetIndexEmptyValue(81, EMPTY_VALUE);
   SetIndexEmptyValue(82, EMPTY_VALUE);
   SetIndexEmptyValue(83, EMPTY_VALUE);
   SetIndexEmptyValue(84, EMPTY_VALUE);
   SetIndexEmptyValue(85, EMPTY_VALUE);
   SetIndexEmptyValue(86, EMPTY_VALUE);
   SetIndexEmptyValue(87, EMPTY_VALUE);
   SetIndexEmptyValue(88, EMPTY_VALUE);
   SetIndexEmptyValue(89, EMPTY_VALUE);
   SetIndexEmptyValue(90, EMPTY_VALUE);
   SetIndexEmptyValue(91, EMPTY_VALUE);
   SetIndexEmptyValue(92, EMPTY_VALUE);
   SetIndexEmptyValue(93, EMPTY_VALUE);
   SetIndexEmptyValue(94, EMPTY_VALUE);
   SetIndexEmptyValue(95, EMPTY_VALUE);
   SetIndexEmptyValue(96, EMPTY_VALUE);
   SetIndexEmptyValue(97, EMPTY_VALUE);
   SetIndexEmptyValue(98, EMPTY_VALUE);
   SetIndexEmptyValue(99, EMPTY_VALUE);
   SetIndexEmptyValue(100, EMPTY_VALUE);
   SetIndexEmptyValue(101, EMPTY_VALUE);
   SetIndexEmptyValue(102, EMPTY_VALUE);
   
   SetIndexArrow(1, 241);   
   SetIndexArrow(2, 241);  
   SetIndexArrow(3, 241); 
   SetIndexArrow(4, 241); 
   SetIndexArrow(5, 241); 
   SetIndexArrow(6, 241); 
   SetIndexArrow(7, 241); 
   SetIndexArrow(8, 241); 
   SetIndexArrow(9, 241);
   SetIndexArrow(10, 241);   
   SetIndexArrow(11, 241);   
   SetIndexArrow(12, 241);  
   SetIndexArrow(13, 241); 
   SetIndexArrow(14, 241); 
   SetIndexArrow(15, 241); 
   SetIndexArrow(16, 241); 
   SetIndexArrow(17, 241); 
   SetIndexArrow(18, 241);
   SetIndexArrow(19, 241);
   SetIndexArrow(20, 241);
   SetIndexArrow(21, 241);
   SetIndexArrow(22, 241);
   SetIndexArrow(23, 241);
   SetIndexArrow(24, 241);
   SetIndexArrow(25, 241);
   SetIndexArrow(26, 241);
   SetIndexArrow(27, 241);
   SetIndexArrow(28, 241);
   SetIndexArrow(29, 241);
   SetIndexArrow(30, 241);
   SetIndexArrow(31, 241);
   SetIndexArrow(32, 241);
   SetIndexArrow(33, 241);
   SetIndexArrow(34, 241);
   SetIndexArrow(35, 241);
   SetIndexArrow(36, 241);
   SetIndexArrow(37, 241);
   SetIndexArrow(38, 241);
   SetIndexArrow(39, 241);
   SetIndexArrow(40, 241);
   SetIndexArrow(41, 241);
   SetIndexArrow(42, 241);
   SetIndexArrow(43, 241);
   SetIndexArrow(44, 241);
   SetIndexArrow(45, 241);
   SetIndexArrow(46, 241);
   SetIndexArrow(47, 241);
   SetIndexArrow(48, 241);
   SetIndexArrow(49, 241);
   SetIndexArrow(50, 241);
   SetIndexArrow(51, 241);
   SetIndexArrow(52, 242);
   SetIndexArrow(53, 242);
   SetIndexArrow(54, 242);
   SetIndexArrow(55, 242);
   SetIndexArrow(56, 242);
   SetIndexArrow(57, 242);
   SetIndexArrow(58, 242);
   SetIndexArrow(59, 242);
   SetIndexArrow(60, 242);
   SetIndexArrow(61, 242);
   SetIndexArrow(62, 242);
   SetIndexArrow(63, 242);
   SetIndexArrow(64, 242);
   SetIndexArrow(65, 242);
   SetIndexArrow(66, 242);
   SetIndexArrow(67, 242);
   SetIndexArrow(68, 242);
   SetIndexArrow(69, 242);
   SetIndexArrow(70, 242);
   SetIndexArrow(71, 242);
   SetIndexArrow(72, 242);
   SetIndexArrow(73, 242);
   SetIndexArrow(74, 242);
   SetIndexArrow(75, 242);
   SetIndexArrow(76, 242);
   SetIndexArrow(77, 242);
   SetIndexArrow(78, 242);
   SetIndexArrow(79, 242);
   SetIndexArrow(80, 242);
   SetIndexArrow(81, 242);
   SetIndexArrow(82, 242);
   SetIndexArrow(83, 242);
   SetIndexArrow(84, 242);
   SetIndexArrow(85, 242);
   SetIndexArrow(86, 242);
   SetIndexArrow(87, 242);
   SetIndexArrow(88, 242);
   SetIndexArrow(89, 242);
   SetIndexArrow(90, 242);
   SetIndexArrow(91, 242);
   SetIndexArrow(92, 242);
   SetIndexArrow(93, 242);
   SetIndexArrow(94, 242);
   SetIndexArrow(95, 242);
   SetIndexArrow(96, 242);
   SetIndexArrow(97, 242);
   SetIndexArrow(98, 242);
   SetIndexArrow(99, 242);
   SetIndexArrow(100, 242);
   SetIndexArrow(101, 242);
   SetIndexArrow(102, 242);
   //initialize myPoint
   myPoint = Point();
   if(Digits() == 5 || Digits() == 3)
     {
      myPoint *= 10;
     }
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime& time[],
                const double& open[],
                const double& high[],
                const double& low[],
                const double& close[],
                const long& tick_volume[],
                const long& volume[],
                const int& spread[])
  {
   int limit = rates_total - prev_calculated;
   //    counting from 1 to rates_total
   ArraySetAsSeries(Buffer1, true);
   ArraySetAsSeries(Buffer2, true);
   ArraySetAsSeries(Buffer3, true);
   ArraySetAsSeries(Buffer4, true);
   ArraySetAsSeries(Buffer5, true);
   ArraySetAsSeries(Buffer6, true);
   ArraySetAsSeries(Buffer7, true);
   ArraySetAsSeries(Buffer8, true);
   ArraySetAsSeries(Buffer9, true);
   ArraySetAsSeries(Buffer10, true);
   ArraySetAsSeries(Buffer11, true);
   ArraySetAsSeries(Buffer12, true);
   ArraySetAsSeries(Buffer13, true);
   ArraySetAsSeries(Buffer14, true);
   ArraySetAsSeries(Buffer15, true);
   ArraySetAsSeries(Buffer16, true);
   ArraySetAsSeries(Buffer17, true);
   ArraySetAsSeries(Buffer18, true);
   ArraySetAsSeries(Buffer19, true);
   ArraySetAsSeries(Buffer20, true);
   ArraySetAsSeries(Buffer21, true);
   ArraySetAsSeries(Buffer22, true);
   ArraySetAsSeries(Buffer23, true);
   ArraySetAsSeries(Buffer24, true);
   ArraySetAsSeries(Buffer25, true);
   ArraySetAsSeries(Buffer26, true);
   ArraySetAsSeries(Buffer27, true);
   ArraySetAsSeries(Buffer28, true);
   ArraySetAsSeries(Buffer29, true);
   ArraySetAsSeries(Buffer30, true);
   ArraySetAsSeries(Buffer31, true);
   ArraySetAsSeries(Buffer32, true);
   ArraySetAsSeries(Buffer33, true);
   ArraySetAsSeries(Buffer34, true);
   ArraySetAsSeries(Buffer35, true);
   ArraySetAsSeries(Buffer36, true);
   ArraySetAsSeries(Buffer37, true);
   ArraySetAsSeries(Buffer38, true);
   ArraySetAsSeries(Buffer39, true);
   ArraySetAsSeries(Buffer40, true);
   ArraySetAsSeries(Buffer41, true);
   ArraySetAsSeries(Buffer42, true);
   ArraySetAsSeries(Buffer43, true);
   ArraySetAsSeries(Buffer44, true);
   ArraySetAsSeries(Buffer45, true);
   ArraySetAsSeries(Buffer46, true);
   ArraySetAsSeries(Buffer47, true);
   ArraySetAsSeries(Buffer48, true);
   ArraySetAsSeries(Buffer49, true);
   ArraySetAsSeries(Buffer50, true);
   ArraySetAsSeries(Buffer51, true);
   ArraySetAsSeries(Buffer52, true);
   ArraySetAsSeries(Buffer53, true);
   ArraySetAsSeries(Buffer54, true);
   ArraySetAsSeries(Buffer55, true);
   ArraySetAsSeries(Buffer56, true);
   ArraySetAsSeries(Buffer57, true);
   ArraySetAsSeries(Buffer58, true);
   ArraySetAsSeries(Buffer59, true);
   ArraySetAsSeries(Buffer60, true);
   ArraySetAsSeries(Buffer61, true);
   ArraySetAsSeries(Buffer62, true);
   ArraySetAsSeries(Buffer63, true);
   ArraySetAsSeries(Buffer64, true);
   ArraySetAsSeries(Buffer65, true);
   ArraySetAsSeries(Buffer66, true);
   ArraySetAsSeries(Buffer67, true);
   ArraySetAsSeries(Buffer68, true);
   ArraySetAsSeries(Buffer69, true);
   ArraySetAsSeries(Buffer70, true);
   ArraySetAsSeries(Buffer71, true);
   ArraySetAsSeries(Buffer72, true);
   ArraySetAsSeries(Buffer73, true);
   ArraySetAsSeries(Buffer74, true);
   ArraySetAsSeries(Buffer75, true);
   ArraySetAsSeries(Buffer76, true);
   ArraySetAsSeries(Buffer77, true);
   ArraySetAsSeries(Buffer78, true);
   ArraySetAsSeries(Buffer79, true);
   ArraySetAsSeries(Buffer80, true);
   ArraySetAsSeries(Buffer81, true);
   ArraySetAsSeries(Buffer82, true);
   ArraySetAsSeries(Buffer83, true);
   ArraySetAsSeries(Buffer84, true);
   ArraySetAsSeries(Buffer85, true);
   ArraySetAsSeries(Buffer86, true);
   ArraySetAsSeries(Buffer87, true);
   ArraySetAsSeries(Buffer88, true);
   ArraySetAsSeries(Buffer89, true);
   ArraySetAsSeries(Buffer90, true);
   ArraySetAsSeries(Buffer91, true);
   ArraySetAsSeries(Buffer92, true);
   ArraySetAsSeries(Buffer93, true);
   ArraySetAsSeries(Buffer94, true);
   ArraySetAsSeries(Buffer95, true);
   ArraySetAsSeries(Buffer96, true);
   ArraySetAsSeries(Buffer97, true);
   ArraySetAsSeries(Buffer98, true);
   ArraySetAsSeries(Buffer99, true);
   ArraySetAsSeries(Buffer100, true);
   ArraySetAsSeries(Buffer101, true);
   ArraySetAsSeries(Buffer102, true);
   //    initial zero
   if(prev_calculated < 1)
     {
      ArrayInitialize(Buffer1, EMPTY_VALUE);
      ArrayInitialize(Buffer2, EMPTY_VALUE);
      ArrayInitialize(Buffer3, EMPTY_VALUE);
      ArrayInitialize(Buffer4, EMPTY_VALUE);
      ArrayInitialize(Buffer5, EMPTY_VALUE);
      ArrayInitialize(Buffer6, EMPTY_VALUE);
      ArrayInitialize(Buffer7, EMPTY_VALUE);
      ArrayInitialize(Buffer8, EMPTY_VALUE);
      ArrayInitialize(Buffer9, EMPTY_VALUE);
      ArrayInitialize(Buffer10, EMPTY_VALUE);
      ArrayInitialize(Buffer11, EMPTY_VALUE);
      ArrayInitialize(Buffer12, EMPTY_VALUE);
      ArrayInitialize(Buffer13, EMPTY_VALUE);
      ArrayInitialize(Buffer14, EMPTY_VALUE);
      ArrayInitialize(Buffer15, EMPTY_VALUE);
      ArrayInitialize(Buffer16, EMPTY_VALUE);
      ArrayInitialize(Buffer17, EMPTY_VALUE);
      ArrayInitialize(Buffer18, EMPTY_VALUE);
      ArrayInitialize(Buffer19, EMPTY_VALUE);
      ArrayInitialize(Buffer20, EMPTY_VALUE);
      ArrayInitialize(Buffer21, EMPTY_VALUE);
      ArrayInitialize(Buffer22, EMPTY_VALUE);
      ArrayInitialize(Buffer23, EMPTY_VALUE);
      ArrayInitialize(Buffer24, EMPTY_VALUE);
      ArrayInitialize(Buffer25, EMPTY_VALUE);
      ArrayInitialize(Buffer26, EMPTY_VALUE);
      ArrayInitialize(Buffer27, EMPTY_VALUE);
      ArrayInitialize(Buffer28, EMPTY_VALUE);
      ArrayInitialize(Buffer29, EMPTY_VALUE);
      ArrayInitialize(Buffer30, EMPTY_VALUE);
      ArrayInitialize(Buffer31, EMPTY_VALUE);
      ArrayInitialize(Buffer32, EMPTY_VALUE);
      ArrayInitialize(Buffer33, EMPTY_VALUE);
      ArrayInitialize(Buffer34, EMPTY_VALUE);
      ArrayInitialize(Buffer35, EMPTY_VALUE);
      ArrayInitialize(Buffer36, EMPTY_VALUE);
      ArrayInitialize(Buffer37, EMPTY_VALUE);
      ArrayInitialize(Buffer38, EMPTY_VALUE);
      ArrayInitialize(Buffer39, EMPTY_VALUE);
      ArrayInitialize(Buffer40, EMPTY_VALUE);
      ArrayInitialize(Buffer41, EMPTY_VALUE);
      ArrayInitialize(Buffer42, EMPTY_VALUE);
      ArrayInitialize(Buffer43, EMPTY_VALUE);
      ArrayInitialize(Buffer44, EMPTY_VALUE);
      ArrayInitialize(Buffer45, EMPTY_VALUE);
      ArrayInitialize(Buffer46, EMPTY_VALUE);
      ArrayInitialize(Buffer47, EMPTY_VALUE);
      ArrayInitialize(Buffer48, EMPTY_VALUE);
      ArrayInitialize(Buffer49, EMPTY_VALUE);
      ArrayInitialize(Buffer50, EMPTY_VALUE);
      ArrayInitialize(Buffer51, EMPTY_VALUE);
      ArrayInitialize(Buffer52, EMPTY_VALUE);
      ArrayInitialize(Buffer53, EMPTY_VALUE);
      ArrayInitialize(Buffer54, EMPTY_VALUE);
      ArrayInitialize(Buffer55, EMPTY_VALUE);
      ArrayInitialize(Buffer56, EMPTY_VALUE);
      ArrayInitialize(Buffer57, EMPTY_VALUE);
      ArrayInitialize(Buffer58, EMPTY_VALUE);
      ArrayInitialize(Buffer59, EMPTY_VALUE);
      ArrayInitialize(Buffer60, EMPTY_VALUE);
      ArrayInitialize(Buffer61, EMPTY_VALUE);
      ArrayInitialize(Buffer62, EMPTY_VALUE);
      ArrayInitialize(Buffer63, EMPTY_VALUE);
      ArrayInitialize(Buffer64, EMPTY_VALUE);
      ArrayInitialize(Buffer65, EMPTY_VALUE);
      ArrayInitialize(Buffer66, EMPTY_VALUE);
      ArrayInitialize(Buffer67, EMPTY_VALUE);
      ArrayInitialize(Buffer68, EMPTY_VALUE);
      ArrayInitialize(Buffer69, EMPTY_VALUE);
      ArrayInitialize(Buffer70, EMPTY_VALUE);
      ArrayInitialize(Buffer71, EMPTY_VALUE);
      ArrayInitialize(Buffer72, EMPTY_VALUE);
      ArrayInitialize(Buffer73, EMPTY_VALUE);
      ArrayInitialize(Buffer74, EMPTY_VALUE);
      ArrayInitialize(Buffer75, EMPTY_VALUE);
      ArrayInitialize(Buffer76, EMPTY_VALUE);
      ArrayInitialize(Buffer77, EMPTY_VALUE);
      ArrayInitialize(Buffer78, EMPTY_VALUE);
      ArrayInitialize(Buffer79, EMPTY_VALUE);
      ArrayInitialize(Buffer80, EMPTY_VALUE);
      ArrayInitialize(Buffer81, EMPTY_VALUE);
      ArrayInitialize(Buffer82, EMPTY_VALUE);
      ArrayInitialize(Buffer83, EMPTY_VALUE);
      ArrayInitialize(Buffer84, EMPTY_VALUE);
      ArrayInitialize(Buffer85, EMPTY_VALUE);
      ArrayInitialize(Buffer86, EMPTY_VALUE);
      ArrayInitialize(Buffer87, EMPTY_VALUE);
      ArrayInitialize(Buffer88, EMPTY_VALUE);
      ArrayInitialize(Buffer89, EMPTY_VALUE);
      ArrayInitialize(Buffer90, EMPTY_VALUE);
      ArrayInitialize(Buffer91, EMPTY_VALUE);
      ArrayInitialize(Buffer92, EMPTY_VALUE);
      ArrayInitialize(Buffer93, EMPTY_VALUE);
      ArrayInitialize(Buffer94, EMPTY_VALUE);
      ArrayInitialize(Buffer95, EMPTY_VALUE);
      ArrayInitialize(Buffer96, EMPTY_VALUE);
      ArrayInitialize(Buffer97, EMPTY_VALUE);
      ArrayInitialize(Buffer98, EMPTY_VALUE);
      ArrayInitialize(Buffer99, EMPTY_VALUE);
      ArrayInitialize(Buffer100, EMPTY_VALUE);
      ArrayInitialize(Buffer101, EMPTY_VALUE);
      ArrayInitialize(Buffer102, EMPTY_VALUE);
     }
   else
      limit++;     
        
// Buffers for chuiku span
double periodKijunSen = 26; // Period for Kijun-sen
double ChikouSpan;

// Buffers for Heikin-Ashi
double haopen, haclose, hahigh, halow;      
   //    main loop
   for(int i = limit-1; i >= 0; i--)
     {
      if (i >= MathMin(5000-1, rates_total-1-50)) continue; //omit some old rates to prevent "Array out of range" or slow calculation   
      
// Calculate Heikin-Ashi values                             
haopen = (i == 0) ? (Open[i+1] + Close[i+1]) / 2.0 : (haopen + haclose) / 2.0;
haclose = (Open[i+1] + High[i+1] + Low[i+1] + Close[i+1]) / 4.0;
hahigh = MathMax(High[i+1], MathMax(haopen, haclose));
halow = MathMin(Low[i+1], MathMin(haopen, haclose));

// Calculate Chikou Span with a backward shift by Kijun-sen period
int shift = -periodKijunSen; // Shift by the Kijun-sen period
ChikouSpan = Close[i + shift]; // Closing price shifted backward by the Kijun-sen period

// Define Bullish Candle and Bullish Heikin-Ashi Candle
double bullish_candle =  Open[1+i] < Close[1+i];
double bullish_heikin_ashi = haopen < haclose;

// Define Bearish Candle and Bullish Heikin-Ashi Candle
double bearish_candle =  Open[1+i] > Close[1+i];
double bearish_heikin_ashi = haopen > haclose;

//Indicator main conditions 
// Condition for calulating Bands Percnetage Change

//LOWER band 100 
   double Lower_BB_Current100 = iBands(NULL, PERIOD_CURRENT, 100, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous100 = iBands(NULL, PERIOD_CURRENT, 100, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange100 = (Lower_BB_Current100 - Lower_BB_Previous100) / Lower_BB_Previous100 * 100.0;

   //LOWER band 200 
   double Lower_BB_Current200 = iBands(NULL, PERIOD_CURRENT, 200, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous200 = iBands(NULL, PERIOD_CURRENT, 200, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange200 = (Lower_BB_Current200 - Lower_BB_Previous200) / Lower_BB_Previous200 * 100.0;
   
   //LOWER band 400
   double Lower_BB_Current400 = iBands(NULL, PERIOD_CURRENT, 400, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous400 = iBands(NULL, PERIOD_CURRENT, 400, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange400 = (Lower_BB_Current400 - Lower_BB_Previous400) / Lower_BB_Previous400 * 100.0; 
   
   //Upper band 100 
   double Upper_BB_Current100 = iBands(NULL, PERIOD_CURRENT, 100, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous100 = iBands(NULL, PERIOD_CURRENT, 100, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange100 = (Upper_BB_Current100 - Upper_BB_Previous100) / Upper_BB_Previous100 * 100.0;
   
   //Upper band 200 
   double Upper_BB_Current200 = iBands(NULL, PERIOD_CURRENT, 200, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous200 = iBands(NULL, PERIOD_CURRENT, 200, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange200 = (Upper_BB_Current100 - Upper_BB_Previous200) / Upper_BB_Previous200 * 100.0;
   
   //Upper band 400
   double Upper_BB_Current400 = iBands(NULL, PERIOD_CURRENT, 400, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous400 = iBands(NULL, PERIOD_CURRENT, 400, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange400 = (Upper_BB_Current400 - Upper_BB_Previous400) / Upper_BB_Previous400 * 100.0;  
   
   //..............LOWER band 8.............// 
   //LOWER band 8 
   double Lower_BB_Current10 = iBands(NULL, PERIOD_CURRENT, 10, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous10 = iBands(NULL, PERIOD_CURRENT, 10, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange10 = (Lower_BB_Current10 - Lower_BB_Previous10) / Lower_BB_Previous10 * 100.0;  
   
   //..............LOWER band 20.............//      
   //LOWER band 20 
   double Lower_BB_Current20 = iBands(NULL, PERIOD_CURRENT, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous20 = iBands(NULL, PERIOD_CURRENT, 20, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange20 = (Lower_BB_Current20 - Lower_BB_Previous20) / Lower_BB_Previous20 * 100.0;  
      
   //..............LOWER band 50.............//  
   //LOWER band 50 
   double Lower_BB_Current50 = iBands(NULL, PERIOD_CURRENT, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 1+i);
   double Lower_BB_Previous50 = iBands(NULL, PERIOD_CURRENT, 50, 2.0, 0, PRICE_CLOSE, MODE_LOWER, 3+i);
   double Lower_BB_percentageChange50 = (Lower_BB_Current50 - Lower_BB_Previous50) / Lower_BB_Previous50 * 100.0;  
  
   //..............Upper band 10.............// 
   //Upper band 10 
   double Upper_BB_Current10 = iBands(NULL, PERIOD_CURRENT, 10, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous10 = iBands(NULL, PERIOD_CURRENT, 10, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange10 = (Upper_BB_Current10 - Upper_BB_Previous10) / Upper_BB_Previous10 * 100.0;
   
   //..............Upper band 20.............// 
   //Upper band 20 
   double Upper_BB_Current20 = iBands(NULL, PERIOD_CURRENT, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous20 = iBands(NULL, PERIOD_CURRENT, 20, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange20 = (Upper_BB_Current20 - Upper_BB_Previous20) / Upper_BB_Previous20 * 100.0;
  
   //..............Upper band 50.............// 
   //Upper band 50 
   double Upper_BB_Current50 = iBands(NULL, PERIOD_CURRENT, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 1+i);
   double Upper_BB_Previous50 = iBands(NULL, PERIOD_CURRENT, 50, 2.0, 0, PRICE_CLOSE, MODE_UPPER, 3+i);
   double Upper_BB_percentageChange50 = (Upper_BB_Current50 - Upper_BB_Previous50) / Upper_BB_Previous50 * 100.0;
         
   //.........8,20,50.........//
   double Range_Buy_Change_BB_10  = (Lower_BB_percentageChange10 > -0.003);
   double Range_Sell_Change_BB_10 = (Upper_BB_percentageChange10 < 0.003);   
   
   double Range_Buy_Change_BB_20  = (Lower_BB_percentageChange20 > -0.003);
   double Range_Sell_Change_BB_20 = (Upper_BB_percentageChange20 < 0.003);   

   double Range_Buy_Change_BB_50  = (Lower_BB_percentageChange50 > -0.003);
   double Range_Sell_Change_BB_50 = (Upper_BB_percentageChange50 < 0.003);
      
   //.........Buy 100,200,400.........// 
   double slope_lower_band100 = (Lower_BB_percentageChange100 < -0.003);
   double slope_lower_band200 = (Lower_BB_percentageChange200 < -0.003);     
   double slope_lower_band400 = (Lower_BB_percentageChange400 < -0.003);

   double range_lower_band100 = (Lower_BB_percentageChange100 > -0.003);
   double range_lower_band200 = (Lower_BB_percentageChange200 > -0.003);     
   double range_lower_band400 = (Lower_BB_percentageChange400 > -0.003);
       
   //.........Sell 100,200,400.........// 
   double slope_upper_band100 = (Upper_BB_percentageChange100 > 0.003);  
   double slope_upper_band200 = (Upper_BB_percentageChange200 > 0.003);  
   double slope_upper_band400 = (Upper_BB_percentageChange400 > 0.003); 

   double range_upper_band100 = (Upper_BB_percentageChange100 < 0.003);
   double range_upper_band200 = (Upper_BB_percentageChange200 < 0.003);     
   double range_upper_band400 = (Upper_BB_percentageChange400 < 0.003);    

   //..........Buy Ichimoku..........// 
   double buy_ichimoku = ChikouSpan > iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
   && (Low[1+i] < iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
       || Low[2+i] < iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 2+i)
      )
   && (Close[1+i] > iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
   || haclose > iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i));
   
   //..........Sell Ichimoku..........// 
   double sell_ichimoku = ChikouSpan < iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
   && (High[1+i] > iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
       || High[2+i] > iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 2+i)
      )
   && (Close[1+i] < iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i)
   || haclose < iIchimoku(NULL, PERIOD_CURRENT, 9, 26, 52, MODE_TENKANSEN, 1+i));


//...................Buy...................//
   
   //.........Buy Bolinger Band 100.........//
   double buy_band100 = (slope_lower_band100 && buy_ichimoku
   && (Low[1+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)
      || Low[2+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 2+i)
      || Low[3+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 3+i)
      || Low[4+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 4+i)
      || Low[5+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 5+i)
      )   
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      ))
   || (range_lower_band100
   && Low[1+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)  
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      ));
   
   //.........Buy Bolinger Band 200.........//
   double buy_band200 = (slope_lower_band200 && buy_ichimoku
   && (Low[1+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)
      || Low[2+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 2+i)
      || Low[3+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 3+i)
      || Low[4+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 4+i)
      || Low[5+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 5+i)
      )   
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      ))
   || (range_lower_band200
   && Low[1+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)  
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      ));
   
   //.........Buy Bolinger Band 400.........//
   double buy_band400 = (slope_lower_band400 && buy_ichimoku
   && (Low[1+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)
      || Low[2+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 2+i)
      || Low[3+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 3+i)
      || Low[4+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 4+i)
      || Low[5+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 5+i)
      )   
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      ))
   || (range_lower_band400
   && Low[1+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i)  
   && ((bullish_candle && Close[1+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      || (bullish_heikin_ashi && haclose > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_LOWER, 1+i))
      )); 

//...................Sell...................//
        
//.........Sell Boliger Band 100.........//
   double sell_band100 = (slope_upper_band100 && sell_ichimoku
   && (High[1+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
      || High[2+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 2+i)
      || High[3+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 3+i)
      || High[4+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 4+i)
      || High[5+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 5+i)
      ) 
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ))
   || (range_upper_band100
   && High[1+i] > iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 100, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ));
 
//.........Sell Boliger Band 200.........//
   double sell_band200 = (slope_upper_band200 && sell_ichimoku
   && (High[1+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
      || High[2+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 2+i)
      || High[3+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 3+i)
      || High[4+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 4+i)
      || High[5+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 5+i)
      ) 
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ))
   || (range_upper_band200
   && High[1+i] > iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 200, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ));
   
   
//.........Sell Boliger Band 400.........//
   double sell_band400 = (slope_upper_band400 && sell_ichimoku
   && (High[1+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
      || High[2+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 2+i)
      || High[3+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 3+i)
      || High[4+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 4+i)
      || High[5+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 5+i)
      ) 
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ))
   || (range_upper_band400
   && High[1+i] > iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i)
   && ((bearish_candle && Close[1+i] < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      || (bearish_heikin_ashi && haclose < iBands(NULL, PERIOD_CURRENT, 400, 2, 0, PRICE_CLOSE, MODE_UPPER, 1+i))
      ));
    
//Buy Bands 
// 100 Bolinger bands
bool Buy_BB_100 = buy_band100;
        
// 200 Bolinger bands         
bool Buy_BB_200 = buy_band200;
     
// 400 Bolinger bands       
bool Buy_BB_400 = buy_band400;
             
//Sell Bands 
// 100 Bolinger bands
bool Sell_BB_100 = sell_band100;
       
// 200 Bolinger bands         
bool Sell_BB_200 = sell_band200;
              
// 400 Bolinger bands       
bool Sell_BB_400 = sell_band400;

//Buy      
bool OverSold = ((((iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 2+i) < 30
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 3+i) < 30
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 4+i) < 30
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 5+i) < 30
      )
      && iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 1+i) > 30
      ) 
  || ((iMFI(NULL, PERIOD_CURRENT, 14, 2+i) < 20
      || iMFI(NULL, PERIOD_CURRENT, 14, 3+i) < 20
      || iMFI(NULL, PERIOD_CURRENT, 14, 4+i) < 20
      || iMFI(NULL, PERIOD_CURRENT, 14, 5+i) < 20
      )
      && iMFI(NULL, PERIOD_CURRENT, 14, 1+i) > 20
      )    
  || ((iDeMarker(NULL, PERIOD_CURRENT, 14, 2+i) < 0.3
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 3+i) < 0.3
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 4+i) < 0.3
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 5+i) < 0.3
      )
      && iDeMarker(NULL, PERIOD_CURRENT, 14, 1+i) > 0.3
      )      
   || ((iWPR(NULL, PERIOD_CURRENT, 14, 2+i) < -80
      || iWPR(NULL, PERIOD_CURRENT, 14, 3+i) < -80
      || iWPR(NULL, PERIOD_CURRENT, 14, 4+i) < -80
      || iWPR(NULL, PERIOD_CURRENT, 14, 5+i) < -80
      )
      && iWPR(NULL, PERIOD_CURRENT, 14, 1+i) > -80
      )         
   || ((iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 2+i) < -100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 3+i) < -100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 4+i) < -100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 5+i) < -100
      )  
      && iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 1+i) > -100  
      )
   || ((iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 2+i) < 20
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 3+i) < 20
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 4+i) < 20
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 5+i) < 20
      )
      && iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 1+i) > 20
     ))
     );
        
     
//Sell      
bool OverBought = (((iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 2+i) > 70
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 3+i) > 70
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 4+i) > 70
      || iRSI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 5+i) > 70
      ) 
  || (iMFI(NULL, PERIOD_CURRENT, 14, 2+i) > 80
      || iMFI(NULL, PERIOD_CURRENT, 14, 3+i) > 80
      || iMFI(NULL, PERIOD_CURRENT, 14, 4+i) > 80
      || iMFI(NULL, PERIOD_CURRENT, 14, 5+i) > 80
      )    
  || (iDeMarker(NULL, PERIOD_CURRENT, 14, 2+i) > 0.7
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 3+i) > 0.7
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 4+i) > 0.7
      || iDeMarker(NULL, PERIOD_CURRENT, 14, 5+i) > 0.7
      )     
   || (iWPR(NULL, PERIOD_CURRENT, 14, 2+i) > -20
      || iWPR(NULL, PERIOD_CURRENT, 14, 3+i) > -20
      || iWPR(NULL, PERIOD_CURRENT, 14, 4+i) > -20
      || iWPR(NULL, PERIOD_CURRENT, 14, 5+i) > -20     
      )         
   || (iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 2+i) > 100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 3+i) > 100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 4+i) > 100
      || iCCI(NULL, PERIOD_CURRENT, 14, PRICE_CLOSE, 5+i) > 100
      )        
   || (iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 1+i) > 80
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 2+i) > 80
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 3+i) > 80
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 4+i) > 80
      || iStochastic(NULL, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, 0, MODE_MAIN, 5+i) > 80
     ))   
     );         
                                                 
{
   for (int k = 1; k <= 5; k++) // Loop through the last 4 candles
    {
    bool PatternFound = false; // Variable to keep track of whether a pattern is found 
    double bodySize = MathAbs(Open[k+i] - Close[k+i]);//Candlestick Body for 1+i candle
    double UpperWick = (High[k+i] - MathMax(Open[k+i], Close[k+i]));//Candlestick Upper Wick
    double LowerWick = (MathMin(Open[k+i], Close[k+i]) - Low[k+i]);//Candlestick Lower Wick
    double Upperbody = MathMax(Open[k+i], Close[k+i]);//Candlestick Upper Body
    double Lowerbody = MathMin(Open[k+i], Close[k+i]);//Candlestick Lower Body 
    double BullishCandle = Open[k+i] < Close[k+i];
    double BearishCandle = Open[k+i] > Close[k+i];
    
    double bodySize2 = MathAbs(Open[k+i+1] - Close[k+i+1]);//Candlestick Body for 1+i candle
    double UpperWick2 = (High[k+i+1] - MathMax(Open[k+i+1], Close[k+i+1]));//Candlestick Upper Wick
    double LowerWick2 = (MathMin(Open[k+i+1], Close[k+i+1]) - Low[k+i+1]);//Candlestick Lower Wick
    double Upperbody2 = MathMax(Open[k+i+1], Close[k+i+1]);//Candlestick Upper Body
    double Lowerbody2 = MathMin(Open[k+i+1], Close[k+i+1]);//Candlestick Lower Body 
    double BullishCandle2 = Open[k+i+1] < Close[k+i+1];
    double BearishCandle2 = Open[k+i+1] > Close[k+i+1];
    
    double bodySize3 = MathAbs(Open[k+i+2] - Close[k+i+2]);//Candlestick Body for 1+i candle
    double UpperWick3 = (High[k+i+2] - MathMax(Open[k+i+2], Close[k+i+2]));//Candlestick Upper Wick
    double LowerWick3 = (MathMin(Open[k+i+2], Close[k+i+2]) - Low[k+i+2]);//Candlestick Lower Wick
    double Upperbody3 = MathMax(Open[k+i+2], Close[k+i+2]);//Candlestick Upper Body
    double Lowerbody3 = MathMin(Open[k+i+2], Close[k+i+2]);//Candlestick Lower Body 
    double BullishCandle3 = Open[k+i+2] < Close[k+i+2];
    double BearishCandle3 = Open[k+i+2] > Close[k+i+2];
    
     bool Hammer = (UpperWick < bodySize && LowerWick > bodySize * 1.7);
     bool InvertedHammer = (LowerWick < bodySize && UpperWick > bodySize * 1.7); 
     
     bool Doji = (bodySize < 0.1 * MathMax(UpperWick, LowerWick));
     bool Long_Legged_Doji = (bodySize < 0.2 * MathMax(UpperWick, LowerWick)) && UpperWick > bodySize && LowerWick > bodySize;
     bool Dragon_Fly_Doji  = (bodySize < 0.2 * MathMax(UpperWick, LowerWick)) && LowerWick > 0.5 * MathMax(UpperWick, LowerWick) && UpperWick < LowerWick * 0.5;
     bool Grave_Stone_Doji = (bodySize < 0.2 * MathMax(UpperWick, LowerWick)) && LowerWick < 0.2 * MathMax(UpperWick, LowerWick) ;
     
     bool Morning_Star = (BearishCandle3 && ( BullishCandle2 || BearishCandle2 ) && BullishCandle && bodySize2 < bodySize3 && bodySize2 < bodySize);
     bool Evening_Star = (BullishCandle3 && ( BullishCandle2 || BearishCandle2 ) && BearishCandle && bodySize2 < bodySize3 && bodySize2 < bodySize);
  
     bool Bullish_Engulfing = (BullishCandle && BearishCandle2 && Open[k+i] < Close[k+i+1] && Close[k+i] > Open[k+i+1]);
     bool Bearish_Engulfing = (BearishCandle && BullishCandle2 && Open[k+i] > Close[k+i+1] && Close[k+i] < Open[k+i+1]);
     
     bool Bullish_Piercing_Pattern = (BearishCandle2 && BullishCandle && Open[1+i] < Low[k+i+1] && (Close[k+i] > ( Open[k+i+1] + Close[k+i+1]) / 1.7)); 
     bool Bearish_Dark_Cloud = (BullishCandle2 && BearishCandle && Open[k+i] > High[k+i+1] && (Close[k+i] < ( Open[k+i+1] + Close[k+i+1]) / 1.7));
      
     bool Bullish_Harami = (BearishCandle2 && BullishCandle && bodySize < bodySize2 && Close[k+i] < Open[k+i+1]
      && High[k+i] < High[k+i+1] && Open[k+i] > Close[k+i+1] && Low[k+i] < Low[k+i+1]);
     bool Bearish_Harami = (BullishCandle2 && BearishCandle && bodySize < bodySize2 && Open[k+i] < Close[k+i+1]
           && High[k+i] < High[k+i+1] && Close[k+i] > Open[k+i+1] && Low[k+i] < Low[k+i+1]);
           
    bool Spinning_Top = ((BullishCandle || BearishCandle) && UpperWick > bodySize*1.7 && LowerWick > bodySize*1.7);
         
     bool Bullish_Marubozu = (BullishCandle && UpperWick < bodySize * 0.15 && LowerWick < bodySize * 0.15);
     bool Bearish_Marubozu = (BearishCandle && UpperWick < bodySize * 0.15 && LowerWick < bodySize * 0.15);
     
     
     if (InvertedHammer || Hammer || Doji || Long_Legged_Doji
        || Morning_Star || Evening_Star || Bullish_Engulfing || Bearish_Engulfing
        || Bullish_Piercing_Pattern || Bearish_Dark_Cloud || Bullish_Harami || Bearish_Harami
        || Grave_Stone_Doji || Spinning_Top || Bullish_Marubozu || Bearish_Marubozu 
        )
     {
         PatternFound = true;
         break; // Exit the loop if either pattern is found in any of the last 10 candles
     } 
   }
    if ( OverSold )
   {
   //Hammer
 if (Hammer)
     {
      if ( Buy_BB_100)
        {
           {
               Buffer1[i] = Close[1+i]; //Set indicator value at Candlestick Close
               if(i == 0 && Time[0] != time_alert) 
               { myAlert("indicator", "Buy Bollinger Band-100 Hammer Pattern"); time_alert = Time[0]; } //Instant alert, only once per bar
           }
          SetIndexLabel(1, "Hammer  Buy BB-100");
        }
        else if ( Buy_BB_200)
        {
           {
               Buffer2[i] = Close[1+i]; //Set indicator value at Candlestick Close
               if(i == 0 && Time[0] != time_alert) 
               { myAlert("indicator", "Buy Bollinger Band-200 Hammer Pattern"); time_alert = Time[0]; } //Instant alert, only once per bar
           }
          SetIndexLabel(2, "Hammer  Buy BB-200");
        }
        else if ( Buy_BB_400)
        {
           {
               Buffer3[i] = Close[1+i]; //Set indicator value at Candlestick Close
               if(i == 0 && Time[0] != time_alert) 
               { myAlert("indicator", "Buy Bollinger Band-400 Hammer Pattern"); time_alert = Time[0]; } //Instant alert, only once per bar
           }
          SetIndexLabel(3, "Hammer  Buy BB-400");
        }
    }
   else if (InvertedHammer)
   {
       if (Buy_BB_100)
       {
           Buffer4[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 InvertedHammer");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(4, "InvertedHammer Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer5[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 InvertedHammer");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(5, "InvertedHammer Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer6[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 InvertedHammer");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(6, "InvertedHammer Buy BB-400");
       }
   }
    else if (Doji)
   {
       if (Buy_BB_100)
       {
           Buffer7[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(7, "Doji Buy BB-100");
       }
       else if (Buy_BB_200)
       {
          Buffer8[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(8, "Doji Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer9[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(9, "Doji Buy BB-400");
       }
     }  
   else if (Long_Legged_Doji)
   {
       if (Buy_BB_100)
       {
           Buffer10[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Long_Legged_Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(10, "Long_Legged_Doji Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer11[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Long_Legged_Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(11, "Long_Legged_Doji Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer12[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Long_Legged_Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(12, "Long_Legged_Doji Buy BB-400");
       }
   }
   // Morning Star
   else if (Morning_Star)
   {
       if (Buy_BB_100)
       {
           Buffer13[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(13, "Morning Star Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer14[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(14, "Morning Star Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer15[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(15, "Morning Star Buy BB-400");
       }
   }
   
   // Evening Star
   else if (Evening_Star)
   {
       if (Buy_BB_100)
       {
           Buffer16[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(16, "Evening Star Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer17[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(17, "Evening Star Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer18[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(18, "Evening Star Buy BB-400");
       }
   }
   
   // Bullish Engulfing
   else if (Bullish_Engulfing)
   {
       if (Buy_BB_100)
       {
           Buffer19[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(19, "Bullish Engulfing Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer20[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(20, "Bullish Engulfing Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer21[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(21, "Bullish Engulfing Buy BB-400");
       }
   }
   
   // Bearish Engulfing
   else if (Bearish_Engulfing)
   {
       if (Buy_BB_100)
       {
           Buffer22[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(22, "Bearish Engulfing Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer23[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(23, "Bearish Engulfing Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer24[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(24, "Bearish Engulfing Buy BB-400");
       }
   }
   // Bullish Piercing Pattern
   else if (Bullish_Piercing_Pattern)
   {
       if (Buy_BB_100)
       {
           Buffer25[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(25, "Bullish Piercing Pattern Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer26[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(26, "Bullish Piercing Pattern Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer27[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(27, "Bullish Piercing Pattern Buy BB-400");
       }
   }
   
   // Bearish Dark Cloud
   else if (Bearish_Dark_Cloud)
   {
       if (Buy_BB_100)
       {
           Buffer28[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(28, "Bearish Dark Cloud Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer29[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(29, "Bearish Dark Cloud Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer30[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(30, "Bearish Dark Cloud Buy BB-400");
       }
   }
   
   // Bullish Harami
   else if (Bullish_Harami)
   {
       if (Buy_BB_100)
       {
           Buffer31[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(31, "Bullish Harami Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer32[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(32, "Bullish Harami Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer33[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(33, "Bullish Harami Buy BB-400");
       }
   }
   
   // Bearish Harami
   else if (Bearish_Harami)
   {
       if (Buy_BB_100)
       {
           Buffer34[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(34, "Bearish Harami Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer35[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(35, "Bearish Harami Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer36[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(36, "Bearish Harami Buy BB-400");
       }
   }
   // Dragon Fly Doji
   else if (Dragon_Fly_Doji)
   {
       if (Buy_BB_100)
       {
           Buffer37[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(37, "Dragon Fly Doji Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer38[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(38, "Dragon Fly Doji Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer39[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(39, "Dragon Fly Doji Buy BB-400");
       }
   }
   
   // Spinning Top
   else if (Spinning_Top)
   {
       if (Buy_BB_100)
       {
           Buffer40[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(40, "Spinning Top Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer41[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(41, "Spinning Top Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer42[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(42, "Spinning Top Buy BB-400");
       }
   }
   // Bullish Marubozu
   else if (Bullish_Marubozu)
   {
       if (Buy_BB_100)
       {
           Buffer43[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(43, "Bullish Marubozu Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer44[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(44, "Bullish Marubozu Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer45[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(45, "Bullish Marubozu Buy BB-400");
       }
   }
   
   // Bearish Marubozu
   else if (Bearish_Marubozu)
   {
       if (Buy_BB_100)
       {
           Buffer46[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(46, "Bearish Marubozu Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer47[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(47, "Bearish Marubozu Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer48[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(48, "Bearish Marubozu Buy BB-400");
       }
   }
      // Bearish Marubozu
   else if (Grave_Stone_Doji)
   {
       if (Buy_BB_100)
       {
           Buffer49[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-100 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(49, "Grave Stone Doji Buy BB-100");
       }
       else if (Buy_BB_200)
       {
           Buffer50[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-200 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(50, "Grave Stone Doji Buy BB-200");
       }
       else if (Buy_BB_400)
       {
           Buffer51[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Buy Bollinger Band-400 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(51, "Grave Stone Doji Buy BB-400");
       }
   }
 }
    else if(OverBought)
    {
   // Hammer
   if (Hammer)
   {
       if (Sell_BB_100)
       {
           Buffer52[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(52, "Hammer Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer53[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(53, "Hammer Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer54[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(54, "Hammer Sell BB-400");
       }
   }
   // Inverted Hammer
   else if (InvertedHammer)
   {
       if (Sell_BB_100)
       {
           Buffer55[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Inverted Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(55, "Inverted Hammer Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer56[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Inverted Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(56, "Inverted Hammer Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer57[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Inverted Hammer Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(57, "Inverted Hammer Sell BB-400");
       }
   }
   // Long Legged Doji
   else if (Long_Legged_Doji)
   {
       if (Sell_BB_100)
       {
           Buffer58[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Long Legged Doji Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(58, "Long Legged Doji Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer59[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Long Legged Doji Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(59, "Long Legged Doji Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer60[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Long Legged Doji Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(60, "Long Legged Doji Sell BB-400");
       }
   }
   else if (Doji)
   {
       if (Sell_BB_100)
       {
           Buffer61[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(61, "Doji Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer62[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(62, "Doji Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer63[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(63, "Doji Sell BB-400");
       }
   }
   else if (Morning_Star)
   {
       if (Sell_BB_100)
       {
           Buffer64[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(64, "Morning Star Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer65[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(65, "Morning Star Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer66[i] = Close[1+i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Morning Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(66, "Morning Star Sell BB-400");
       }
   }
   else if (Evening_Star)
   {
       if (Sell_BB_100)
       {
           Buffer67[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(67, "Evening Star Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer68[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(68, "Evening Star Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer69[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Evening Star");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(69, "Evening Star Sell BB-400");
       }
   }
   else if (Bullish_Engulfing)
   {
       if (Sell_BB_100)
       {
           Buffer70[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(70, "Bullish Engulfing Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer71[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(71, "Bullish Engulfing Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer72[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bullish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(72, "Bullish Engulfing Sell BB-400");
       }
   }
   else if (Bearish_Engulfing)
   {
       if (Sell_BB_100)
       {
           Buffer73[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(73, "Bearish Engulfing Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer74[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(74, "Bearish Engulfing Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer75[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bearish Engulfing");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(75, "Bearish Engulfing Sell BB-400");
       }
   }
   else if (Bullish_Piercing_Pattern)
   {
       if (Sell_BB_100)
       {
           Buffer76[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(76, "Bullish Piercing Pattern Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer77[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(77, "Bullish Piercing Pattern Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer78[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bullish Piercing Pattern");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(78, "Bullish Piercing Pattern Sell BB-400");
       }
   }
   else if (Bearish_Dark_Cloud)
   {
       if (Sell_BB_100)
       {
           Buffer79[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(79, "Bearish Dark Cloud Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer80[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(80, "Bearish Dark Cloud Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer81[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bearish Dark Cloud");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(81, "Bearish Dark Cloud Sell BB-400");
       }
   }
   else if (Bullish_Harami)
   {
       if (Sell_BB_100)
       {
           Buffer82[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(82, "Bullish Harami Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer83[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(83, "Bullish Harami Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer84[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bullish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(84, "Bullish Harami Sell BB-400");
       }
   }
   else if (Bearish_Harami)
   {
       if (Sell_BB_100)
       {
           Buffer85[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(85, "Bearish Harami Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer86[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(86, "Bearish Harami Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer87[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bearish Harami");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(87, "Bearish Harami Sell BB-400");
       }
   }
   else if (Dragon_Fly_Doji)
   {
       if (Sell_BB_100)
       {
           Buffer88[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(88, "Dragon Fly Doji Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer89[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(89, "Dragon Fly Doji Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer90[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Dragon Fly Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(90, "Dragon Fly Doji Sell BB-400");
       }
     }
   else if (Spinning_Top)
   {
       if (Sell_BB_100)
       {
           Buffer91[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(91, "Spinning Top Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer92[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(92, "Spinning Top Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer93[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Spinning Top");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(93, "Spinning Top Sell BB-400");
       }
     }    
   else if (Bullish_Marubozu)
   {
       if (Sell_BB_100)
       {
           Buffer94[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(94, "Bullish Marubozu Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer95[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(95, "Bullish Marubozu Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer96[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bullish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(96, "Bullish Marubozu Sell BB-400");
       }
     }    
   else if (Bearish_Marubozu)
   {
       if (Sell_BB_100)
       {
           Buffer97[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(97, "Bearish Marubozu Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer98[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(98, "Bearish Marubozu Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer99[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Bearish Marubozu");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(99, "Bearish Marubozu Sell BB-400");
       }
     }  
   else if (Grave_Stone_Doji)
   {
       if (Sell_BB_100)
       {
           Buffer100[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-100 Grave Stone Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(100, "Grave Stone Doji Sell BB-100");
       }
       else if (Sell_BB_200)
       {
           Buffer101[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-200 Grave Stone Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(101, "Grave Stone Doji Sell BB-200");
       }
       else if (Sell_BB_400)
       {
           Buffer102[i] = Close[1 + i]; // Set indicator value at Candlestick Close
           if (i == 0 && Time[0] != time_alert)
           {
               myAlert("indicator", "Sell Bollinger Band-400 Grave Stone Doji");
               time_alert = Time[0]; // Instant alert, only once per bar
           }
           SetIndexLabel(102, "Grave Stone Doji Sell BB-400");
       }
     }             
   }                   
 else
 {
   Buffer1[i] = EMPTY_VALUE;
   Buffer2[i] = EMPTY_VALUE;
   Buffer3[i] = EMPTY_VALUE;  
   Buffer4[i] = EMPTY_VALUE;  
   Buffer5[i] = EMPTY_VALUE;  
   Buffer6[i] = EMPTY_VALUE;  
   Buffer7[i] = EMPTY_VALUE;  
   Buffer8[i] = EMPTY_VALUE;  
   Buffer9[i] = EMPTY_VALUE;  
   Buffer10[i] = EMPTY_VALUE;  
   Buffer11[i] = EMPTY_VALUE;  
   Buffer12[i] = EMPTY_VALUE;  
   Buffer13[i] = EMPTY_VALUE;  
   Buffer14[i] = EMPTY_VALUE;  
   Buffer15[i] = EMPTY_VALUE; 
   Buffer16[i] = EMPTY_VALUE;  
   Buffer17[i] = EMPTY_VALUE;
   Buffer18[i] = EMPTY_VALUE;
   Buffer19[i] = EMPTY_VALUE;
   Buffer20[i] = EMPTY_VALUE;
   Buffer21[i] = EMPTY_VALUE;
   Buffer22[i] = EMPTY_VALUE;
   Buffer23[i] = EMPTY_VALUE;
   Buffer24[i] = EMPTY_VALUE;
   Buffer25[i] = EMPTY_VALUE;
   Buffer26[i] = EMPTY_VALUE;
   Buffer27[i] = EMPTY_VALUE;
   Buffer28[i] = EMPTY_VALUE;
   Buffer29[i] = EMPTY_VALUE;
   Buffer30[i] = EMPTY_VALUE;
   Buffer31[i] = EMPTY_VALUE;
   Buffer32[i] = EMPTY_VALUE;
   Buffer33[i] = EMPTY_VALUE;
   Buffer34[i] = EMPTY_VALUE;
   Buffer35[i] = EMPTY_VALUE;
   Buffer36[i] = EMPTY_VALUE;
   Buffer37[i] = EMPTY_VALUE;
   Buffer38[i] = EMPTY_VALUE;
   Buffer39[i] = EMPTY_VALUE;
   Buffer40[i] = EMPTY_VALUE;
   Buffer41[i] = EMPTY_VALUE;
   Buffer42[i] = EMPTY_VALUE;
   Buffer43[i] = EMPTY_VALUE;
   Buffer44[i] = EMPTY_VALUE;
   Buffer45[i] = EMPTY_VALUE;
   Buffer46[i] = EMPTY_VALUE;
   Buffer47[i] = EMPTY_VALUE;
   Buffer48[i] = EMPTY_VALUE;
   Buffer49[i] = EMPTY_VALUE;
   Buffer50[i] = EMPTY_VALUE;
   Buffer51[i] = EMPTY_VALUE; 
   Buffer52[i] = EMPTY_VALUE;
   Buffer53[i] = EMPTY_VALUE;
   Buffer54[i] = EMPTY_VALUE;
   Buffer55[i] = EMPTY_VALUE;
   Buffer56[i] = EMPTY_VALUE;
   Buffer57[i] = EMPTY_VALUE;
   Buffer58[i] = EMPTY_VALUE;
   Buffer59[i] = EMPTY_VALUE;
   Buffer60[i] = EMPTY_VALUE;
   Buffer61[i] = EMPTY_VALUE;
   Buffer62[i] = EMPTY_VALUE;
   Buffer63[i] = EMPTY_VALUE;
   Buffer64[i] = EMPTY_VALUE;
   Buffer65[i] = EMPTY_VALUE;
   Buffer66[i] = EMPTY_VALUE;
   Buffer67[i] = EMPTY_VALUE;
   Buffer68[i] = EMPTY_VALUE;
   Buffer69[i] = EMPTY_VALUE;
   Buffer70[i] = EMPTY_VALUE;
   Buffer71[i] = EMPTY_VALUE;
   Buffer72[i] = EMPTY_VALUE;
   Buffer73[i] = EMPTY_VALUE;
   Buffer74[i] = EMPTY_VALUE;
   Buffer75[i] = EMPTY_VALUE;
   Buffer76[i] = EMPTY_VALUE;
   Buffer77[i] = EMPTY_VALUE;
   Buffer78[i] = EMPTY_VALUE;
   Buffer79[i] = EMPTY_VALUE;
   Buffer80[i] = EMPTY_VALUE;
   Buffer81[i] = EMPTY_VALUE;
   Buffer82[i] = EMPTY_VALUE;
   Buffer83[i] = EMPTY_VALUE;
   Buffer84[i] = EMPTY_VALUE;
   Buffer85[i] = EMPTY_VALUE;
   Buffer86[i] = EMPTY_VALUE;
   Buffer87[i] = EMPTY_VALUE;
   Buffer88[i] = EMPTY_VALUE;
   Buffer89[i] = EMPTY_VALUE;
   Buffer90[i] = EMPTY_VALUE;
   Buffer91[i] = EMPTY_VALUE;
   Buffer92[i] = EMPTY_VALUE;
   Buffer93[i] = EMPTY_VALUE;
   Buffer94[i] = EMPTY_VALUE;
   Buffer95[i] = EMPTY_VALUE;
   Buffer96[i] = EMPTY_VALUE;
   Buffer97[i] = EMPTY_VALUE;
   Buffer98[i] = EMPTY_VALUE;
   Buffer99[i] = EMPTY_VALUE;
   Buffer100[i] = EMPTY_VALUE;
   Buffer101[i] = EMPTY_VALUE;
   Buffer102[i] = EMPTY_VALUE;
    }
   }
  }
return rates_total;
 }
//+------------------------------------------------------------------+