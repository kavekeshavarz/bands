#property copyright "xAI Grok 3"
#property link      "https://xai.com"
#property version   "1.00"
#property strict
#property indicator_chart_window

//===== Input Sections with Separators =====
// General Settings
input string GeneralSettings = "================= General Settings ================="; //====================================================
input int LookbackDefault = 50;          // Default Lookback for Order Blocks
input double MeanThreshold = 1.5;        // Mean Threshold for Impulsive Move (e.g., 1.5x mean range)
input bool ShowLabelsDefault = true;     // Show Labels by Default
input bool TransparentDefault = true;    // Transparent Blocks by Default
input int LabelFontSize = 8;             // Font Size for Order Block Labels
input int BlockWidth = 2;                // Width of Block Lines
input string LabelFont = "Arial";        // Font Type for Labels
input bool ContactByShadowOrBody = true; // Count Contact by Shadow or Body (true = both, false = body only)
input double MinReversalPips = 10.0;     // Minimum Reversal in Pips to Count as Contact
input bool EnableSoundAlerts = true;     // Enable Sound Alerts
input string AlertSoundFile = "alert.wav"; // Sound file for alerts

// Theme Settings
input string ThemeSettings = "================= Theme Settings ================="; //====================================================
enum ENUM_PANEL_THEME {
   THEME_DARK_PRO = 0,       // Dark Professional
   THEME_LIGHT_MODERN = 1,   // Light Modern
   THEME_BLUE_TECH = 2,      // Blue Tech
   THEME_GREEN_NATURE = 3,   // Green Nature
   THEME_RED_VELVET = 4,     // Red Velvet
   THEME_PURPLE_MYSTIC = 5,  // Purple Mystic
   THEME_DARK_CARBON = 6,    // Dark Carbon
   THEME_WHITE_PEARL = 7,    // White Pearl
   THEME_DARK_OCEAN = 8,     // Dark Ocean
   THEME_WHITE_SNOW = 9      // White Snow
};
input ENUM_PANEL_THEME PanelTheme = THEME_DARK_PRO; // Select Theme

// Timeframe-Specific Settings
input string TimeframeSettings = "================= Timeframe Settings ================="; //====================================================
// M1 Settings
input string M1Settings = "----- M1 Settings -----"; //---------------------------- 
input int M1_Lookback = 50;              // M1 Lookback
input bool M1_Alerts = false;            // M1 Alerts
input color M1_BullishColor = clrDodgerBlue; // M1 Bullish Color
input color M1_BearishColor = clrRed;    // M1 Bearish Color

// M5 Settings
input string M5Settings = "----- M5 Settings -----"; //---------------------------- 
input int M5_Lookback = 50;              // M5 Lookback
input bool M5_Alerts = false;            // M5 Alerts
input color M5_BullishColor = clrDodgerBlue; // M5 Bullish Color
input color M5_BearishColor = clrRed;    // M5 Bearish Color

// M15 Settings
input string M15Settings = "----- M15 Settings -----"; //---------------------------- 
input int M15_Lookback = 50;             // M15 Lookback
input bool M15_Alerts = false;           // M15 Alerts
input color M15_BullishColor = clrDodgerBlue; // M15 Bullish Color
input color M15_BearishColor = clrRed;   // M15 Bearish Color

// M30 Settings
input string M30Settings = "----- M30 Settings -----"; //---------------------------- 
input int M30_Lookback = 50;             // M30 Lookback
input bool M30_Alerts = false;           // M30 Alerts
input color M30_BullishColor = clrDodgerBlue; // M30 Bullish Color
input color M30_BearishColor = clrRed;   // M30 Bearish Color

// H1 Settings
input string H1Settings = "----- H1 Settings -----"; //---------------------------- 
input int H1_Lookback = 50;              // H1 Lookback
input bool H1_Alerts = false;            // H1 Alerts
input color H1_BullishColor = clrDodgerBlue; // H1 Bullish Color
input color H1_BearishColor = clrRed;    // H1 Bearish Color

// H4 Settings
input string H4Settings = "----- H4 Settings -----"; //---------------------------- 
input int H4_Lookback = 50;              // H4 Lookback
input bool H4_Alerts = false;            // H4 Alerts
input color H4_BullishColor = clrDodgerBlue; // H4 Bullish Color
input color H4_BearishColor = clrRed;    // H4 Bearish Color

// D1 Settings
input string D1Settings = "----- D1 Settings -----"; //---------------------------- 
input int D1_Lookback = 50;              // D1 Lookback
input bool D1_Alerts = false;            // D1 Alerts
input color D1_BullishColor = clrDodgerBlue; // D1 Bullish Color
input color D1_BearishColor = clrRed;    // D1 Bearish Color

// W1 Settings
input string W1Settings = "----- W1 Settings -----"; //---------------------------- 
input int W1_Lookback = 50;              // W1 Lookback
input bool W1_Alerts = false;            // W1 Alerts
input color W1_BullishColor = clrDodgerBlue; // W1 Bullish Color
input color W1_BearishColor = clrRed;    // W1 Bearish Color

// MN Settings
input string MNSettings = "----- MN Settings -----"; //---------------------------- 
input int MN_Lookback = 50;              // MN Lookback
input bool MN_Alerts = false;            // MN Alerts
input color MN_BullishColor = clrDodgerBlue; // MN Bullish Color
input color MN_BearishColor = clrRed;    // MN Bearish Color

// Customization Settings
input string CustomizationSettings = "================= Customization Settings ================="; //====================================================
enum ENUM_BLOCK_TYPE {
   BLOCK_REGULAR = 0,            // Regular Order Blocks
   BLOCK_BULLISH_REJECTION = 1,  // Bullish Rejection Order Blocks
   BLOCK_BEARISH_REJECTION = 2,  // Bearish Rejection Order Blocks
   BLOCK_BREAKER = 3,            // Breaker Order Blocks
   BLOCK_MITIGATION = 4,         // Mitigation Order Blocks
   BLOCK_UNMITIGATED = 5,        // Unmitigated Order Blocks
   BLOCK_REFINED = 6,            // Refined Order Blocks
   BLOCK_LIQUIDITY_INDUCED = 7,  // Liquidity-Induced Order Blocks
   BLOCK_IMBALANCE = 8           // Imbalance Order Blocks
};
input bool ProximityAlerts = false;              // Enable Proximity Alerts
input double ProximityDistancePips = 10.0;       // Proximity Distance in Pips for Alerts
input int BlockExpirationBars = 100;             // Number of bars after which blocks expire
input bool ShowStrengthIndicator = true;         // Show block strength indicator

//+------------------------------------------------------------------+
//| Global Variables                                                 |
//+------------------------------------------------------------------+
int PanelX = 20, PanelY = 20;
int ShowButtonX = 20, ShowButtonY = 20;
bool PanelVisible = true;
bool ShowLabels, TransparentBlocks;
bool PanelMoving = false;
bool ShowButtonMoving = false;
int PanelOffsetX, PanelOffsetY;
int ShowButtonOffsetX, ShowButtonOffsetY;
int TimeframeStates[9];
int Timeframes[9] = {1, 5, 15, 30, 60, 240, 1440, 10080, 43200}; // M1 to MN
color TF_BullishColors[9], TF_BearishColors[9];
color PanelBGColor, ButtonBGColor, TextColor;
double PanelScale = 1.0; // Scale factor for panel size (0.5 to 2.0)
int PanelWidth = 200, PanelHeight = 500; // Increased height for all block types
int ScaledPanelWidth, ScaledPanelHeight;
ENUM_BLOCK_TYPE ActiveBlockType = BLOCK_REGULAR; // Only one type active at a time
bool AlertOncePerBlock[1000]; // Track if alert was already sent for each block

// TF-Specific Parameters
int TF_Lookback[9];
bool TF_Alerts[9];
int TF_ActualBlocks[9]; // Track total number of blocks per timeframe

//+------------------------------------------------------------------+
//| Order Block Structure                                            |
//+------------------------------------------------------------------+
struct OrderBlock {
   string name;
   datetime startTime;
   double high;
   double low;
   double open;
   color col;
   bool isBullish;
   int contacts;
   bool touched;
   bool isDragging;
   int tfIndex;
   bool hasBroken;
   ENUM_BLOCK_TYPE blockType;
   int strength; // Strength level 1-3
   int creationBar; // Bar index when block was created
};

OrderBlock Blocks[];
int BlockCount = 0;

//+------------------------------------------------------------------+
//| Initialization Function                                          |
//+------------------------------------------------------------------+
int OnInit() {
   ArrayResize(Blocks, LookbackDefault * 9 * 9);
   ArrayInitialize(AlertOncePerBlock, false);

   ShowLabels = ShowLabelsDefault;
   TransparentBlocks = TransparentDefault;
   ArrayInitialize(TimeframeStates, 0);
   ArrayInitialize(TF_ActualBlocks, 0);
   ActiveBlockType = BLOCK_REGULAR; // Default to regular blocks

   // Initialize TF-specific parameters
   TF_Lookback[0] = M1_Lookback;  TF_Alerts[0] = M1_Alerts;  TF_BullishColors[0] = M1_BullishColor;  TF_BearishColors[0] = M1_BearishColor;
   TF_Lookback[1] = M5_Lookback;  TF_Alerts[1] = M5_Alerts;  TF_BullishColors[1] = M5_BullishColor;  TF_BearishColors[1] = M5_BearishColor;
   TF_Lookback[2] = M15_Lookback; TF_Alerts[2] = M15_Alerts; TF_BullishColors[2] = M15_BullishColor; TF_BearishColors[2] = M15_BearishColor;
   TF_Lookback[3] = M30_Lookback; TF_Alerts[3] = M30_Alerts; TF_BullishColors[3] = M30_BullishColor; TF_BearishColors[3] = M30_BearishColor;
   TF_Lookback[4] = H1_Lookback;  TF_Alerts[4] = H1_Alerts;  TF_BullishColors[4] = H1_BullishColor;  TF_BearishColors[4] = H1_BearishColor;
   TF_Lookback[5] = H4_Lookback;  TF_Alerts[5] = H4_Alerts;  TF_BullishColors[5] = H4_BullishColor;  TF_BearishColors[5] = H4_BearishColor;
   TF_Lookback[6] = D1_Lookback;  TF_Alerts[6] = D1_Alerts;  TF_BullishColors[6] = D1_BullishColor;  TF_BearishColors[6] = D1_BearishColor;
   TF_Lookback[7] = W1_Lookback;  TF_Alerts[7] = W1_Alerts;  TF_BullishColors[7] = W1_BullishColor;  TF_BearishColors[7] = W1_BearishColor;
   TF_Lookback[8] = MN_Lookback;  TF_Alerts[8] = MN_Alerts;  TF_BullishColors[8] = MN_BullishColor;  TF_BearishColors[8] = MN_BearishColor;

   SetThemeColors();
   CreateControlPanel();
   return(INIT_SUCCEEDED);
}

//+------------------------------------------------------------------+
//| Deinitialization Function                                        |
//+------------------------------------------------------------------+
void OnDeinit(const int reason) {
   ObjectsDeleteAll(0, "OrderBlock_");
   ObjectsDeleteAll(0, "Panel_");
   ObjectsDeleteAll(0, "ShowPanelButton");
}

//+------------------------------------------------------------------+
//| Calculation Function                                             |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total, const int prev_calculated,
                const datetime &time[], const double &open[],
                const double &high[], const double &low[],
                const double &close[], const long &tick_volume[],
                const long &volume[], const int &spread[]) {
   CheckPriceTouches();
   RemoveExpiredBlocks();
   return(rates_total);
}

//+------------------------------------------------------------------+
//| Remove expired blocks                                            |
//+------------------------------------------------------------------+
void RemoveExpiredBlocks() {
   for(int i = BlockCount-1; i >= 0; i--) {
      int barsSinceCreation = iBarShift(NULL, 0, Blocks[i].startTime);
      if(barsSinceCreation > BlockExpirationBars) {
         ObjectDelete(0, Blocks[i].name);
         ObjectDelete(0, Blocks[i].name + "_Label");
         
         // Shift all blocks after this one down in the array
         for(int j = i; j < BlockCount-1; j++) {
            Blocks[j] = Blocks[j+1];
         }
         BlockCount--;
         TF_ActualBlocks[Blocks[i].tfIndex]--;
      }
   }
}

//+------------------------------------------------------------------+
//| Set Theme Colors Based on Input                                  |
//+------------------------------------------------------------------+
void SetThemeColors() {
   switch(PanelTheme) {
      case THEME_DARK_PRO: PanelBGColor = clrDarkSlateGray; ButtonBGColor = clrSteelBlue; TextColor = clrWhite; break;
      case THEME_LIGHT_MODERN: PanelBGColor = clrWhiteSmoke; ButtonBGColor = clrLightBlue; TextColor = clrBlack; break;
      case THEME_BLUE_TECH: PanelBGColor = clrMidnightBlue; ButtonBGColor = clrDodgerBlue; TextColor = clrLightCyan; break;
      case THEME_GREEN_NATURE: PanelBGColor = clrDarkOliveGreen; ButtonBGColor = clrSeaGreen; TextColor = clrIvory; break;
      case THEME_RED_VELVET: PanelBGColor = clrDarkRed; ButtonBGColor = clrCrimson; TextColor = clrWhite; break;
      case THEME_PURPLE_MYSTIC: PanelBGColor = clrDarkSlateBlue; ButtonBGColor = clrMediumPurple; TextColor = clrLavender; break;
      case THEME_DARK_CARBON: PanelBGColor = clrBlack; ButtonBGColor = clrDarkGray; TextColor = clrSilver; break;
      case THEME_WHITE_PEARL: PanelBGColor = clrWhite; ButtonBGColor = clrLightGray; TextColor = clrBlack; break;
      case THEME_DARK_OCEAN: PanelBGColor = clrNavy; ButtonBGColor = clrTeal; TextColor = clrAqua; break;
      case THEME_WHITE_SNOW: PanelBGColor = clrSnow; ButtonBGColor = clrGainsboro; TextColor = clrDarkSlateGray; break;
   }
}

//+------------------------------------------------------------------+
//| Detect and Draw Order Block                                      |
//+------------------------------------------------------------------+
void DetectAndDrawOrderBlock(int i, int tf, int tfIndex) {
   if(iBars(NULL, tf) <= i + 2) return;

   // Common variables
   double prevClose = iClose(NULL, tf, i+1);
   double prevOpen = iOpen(NULL, tf, i+1);
   double prevHigh = iHigh(NULL, tf, i+1);
   double prevLow = iLow(NULL, tf, i+1);
   double currentClose = iClose(NULL, tf, i);
   double currentHigh = iHigh(NULL, tf, i);
   double currentLow = iLow(NULL, tf, i);
   bool isBullishCandle = prevClose > prevOpen;
   bool isBearishCandle = prevClose < prevOpen;

   // Calculate mean range of prior 5 candles for threshold
   double meanRange = 0;
   for(int j = i+1; j <= i+5 && j < iBars(NULL, tf); j++) {
      meanRange += iHigh(NULL, tf, j) - iLow(NULL, tf, j);
   }
   meanRange /= 5.0;
   double impulseRange = currentHigh - currentLow;

   // Check for minimum time gap to avoid overlap (e.g., 3 candles apart)
   bool tooClose = false;
   datetime currentTime = iTime(NULL, tf, i+1);
   for(int b = 0; b < BlockCount; b++) {
      if(Blocks[b].tfIndex == tfIndex && MathAbs(currentTime - Blocks[b].startTime) < 3 * PeriodSeconds(tf)) {
         tooClose = true;
         break;
      }
   }
   if(tooClose) return;

   // Detect based on active block type
   bool isBlockDetected = false;
   bool isBullishBlock = false;
   int blockStrength = 1; // Default strength

   switch(ActiveBlockType) {
      case BLOCK_REGULAR:
         if(isBearishCandle && currentClose > prevHigh && impulseRange > meanRange * MeanThreshold) {
            isBlockDetected = true;
            isBullishBlock = true;
         } else if(isBullishCandle && currentClose < prevLow && impulseRange > meanRange * MeanThreshold) {
            isBlockDetected = true;
            isBullishBlock = false;
         }
         break;

      case BLOCK_BULLISH_REJECTION: {
   double bodySizeBull = MathAbs(prevClose - prevOpen);
   double upperWick = prevHigh - MathMax(prevOpen, prevClose);
   if(isBearishCandle && upperWick > 2 * bodySizeBull && currentClose > prevHigh && impulseRange > meanRange * MeanThreshold) {
      isBlockDetected = true;
      isBullishBlock = true;
      blockStrength = (upperWick/bodySizeBull > 3) ? 3 : 2;
   }
   break;
}

case BLOCK_BEARISH_REJECTION: {
   double bodySizeBear = MathAbs(prevClose - prevOpen);
   double lowerWick = MathMin(prevOpen, prevClose) - prevLow;
   if(isBullishCandle && lowerWick > 2 * bodySizeBear && currentClose < prevLow && impulseRange > meanRange * MeanThreshold) {
      isBlockDetected = true;
      isBullishBlock = false;
      blockStrength = (lowerWick/bodySizeBear > 3) ? 3 : 2;
   }
   break;
}

      case BLOCK_BREAKER:
         if(isBearishCandle && currentClose > prevHigh && iLow(NULL, tf, i+2) < prevLow) {
            isBlockDetected = true;
            isBullishBlock = true;
            blockStrength = (iLow(NULL, tf, i+2) < prevLow - meanRange) ? 3 : 2;
         } else if(isBullishCandle && currentClose < prevLow && iHigh(NULL, tf, i+2) > prevHigh) {
            isBlockDetected = true;
            isBullishBlock = false;
            blockStrength = (iHigh(NULL, tf, i+2) > prevHigh + meanRange) ? 3 : 2;
         }
         break;

      case BLOCK_MITIGATION:
         if(isBearishCandle && currentClose > prevHigh && iClose(NULL, tf, i+2) < currentClose && iClose(NULL, tf, i+2) > prevHigh) {
            isBlockDetected = true;
            isBullishBlock = true;
         } else if(isBullishCandle && currentClose < prevLow && iClose(NULL, tf, i+2) > currentClose && iClose(NULL, tf, i+2) < prevLow) {
            isBlockDetected = true;
            isBullishBlock = false;
         }
         break;

      case BLOCK_UNMITIGATED:
         if(isBearishCandle && currentClose > prevHigh && !PriceTouchedSince(tf, i+1, prevHigh, prevLow)) {
            isBlockDetected = true;
            isBullishBlock = true;
            blockStrength = 3; // Unmitigated blocks are strongest
         } else if(isBullishCandle && currentClose < prevLow && !PriceTouchedSince(tf, i+1, prevHigh, prevLow)) {
            isBlockDetected = true;
            isBullishBlock = false;
            blockStrength = 3;
         }
         break;

      case BLOCK_REFINED:
         if(isBearishCandle && currentClose > prevHigh && impulseRange > meanRange * MeanThreshold && MathAbs(prevHigh - prevLow) < meanRange) {
            isBlockDetected = true;
            isBullishBlock = true;
         } else if(isBullishCandle && currentClose < prevLow && impulseRange > meanRange * MeanThreshold && MathAbs(prevHigh - prevLow) < meanRange) {
            isBlockDetected = true;
            isBullishBlock = false;
         }
         break;

      case BLOCK_LIQUIDITY_INDUCED:
         if(isBearishCandle && currentClose > prevHigh && iHigh(NULL, tf, i+2) < prevHigh && iLow(NULL, tf, i+2) < prevLow) {
            isBlockDetected = true;
            isBullishBlock = true;
            blockStrength = (iLow(NULL, tf, i+2) < prevLow - meanRange) ? 3 : 2;
         } else if(isBullishCandle && currentClose < prevLow && iLow(NULL, tf, i+2) > prevLow && iHigh(NULL, tf, i+2) > prevHigh) {
            isBlockDetected = true;
            isBullishBlock = false;
            blockStrength = (iHigh(NULL, tf, i+2) > prevHigh + meanRange) ? 3 : 2;
         }
         break;

      case BLOCK_IMBALANCE:
         if(isBearishCandle && currentClose > prevHigh && iHigh(NULL, tf, i+2) < currentClose && iLow(NULL, tf, i+2) > prevHigh) {
            isBlockDetected = true;
            isBullishBlock = true;
         } else if(isBullishCandle && currentClose < prevLow && iLow(NULL, tf, i+2) > currentClose && iHigh(NULL, tf, i+2) < prevLow) {
            isBlockDetected = true;
            isBullishBlock = false;
         }
         break;
   }

   if(isBlockDetected) {
      string name = "OrderBlock_" + TimeToString(currentTime) + "_" + IntegerToString(tf);
      double blockHigh = prevHigh;
      double blockLow = prevLow;
      double blockOpen = prevOpen;
      datetime startTime = currentTime;

      if(ObjectFind(0, name) < 0) {
         AddBlock(name, startTime, blockHigh, blockLow, blockOpen, 
                isBullishBlock ? TF_BullishColors[tfIndex] : TF_BearishColors[tfIndex], 
                isBullishBlock, tfIndex, ActiveBlockType, blockStrength);
      }
   }
}

//+------------------------------------------------------------------+
//| Check if Price Touched Zone Since Creation (for Unmitigated)     |
//+------------------------------------------------------------------+
bool PriceTouchedSince(int tf, int startBar, double high, double low) {
   for(int i = startBar - 1; i >= 0; i--) {
      if(iHigh(NULL, tf, i) >= low && iLow(NULL, tf, i) <= high) return true;
   }
   return false;
}

//+------------------------------------------------------------------+
//| Add a New Order Block                                            |
//+------------------------------------------------------------------+
void AddBlock(string name, datetime startTime, double high, double low, double open, 
             color col, bool isBullish, int tfIndex, ENUM_BLOCK_TYPE blockType, int strength = 1) {
   if(BlockCount >= ArraySize(Blocks)) {
      ArrayResize(Blocks, ArraySize(Blocks) + 100);
   }
   
   Blocks[BlockCount].name = name;
   Blocks[BlockCount].startTime = startTime;
   Blocks[BlockCount].high = high;
   Blocks[BlockCount].low = low;
   Blocks[BlockCount].open = open;
   Blocks[BlockCount].col = col;
   Blocks[BlockCount].isBullish = isBullish;
   Blocks[BlockCount].contacts = 0;
   Blocks[BlockCount].touched = false;
   Blocks[BlockCount].isDragging = false;
   Blocks[BlockCount].tfIndex = tfIndex;
   Blocks[BlockCount].hasBroken = false;
   Blocks[BlockCount].blockType = blockType;
   Blocks[BlockCount].strength = strength;
   Blocks[BlockCount].creationBar = iBars(NULL, 0); // Current bar on chart when block is created
   
   DrawOrderBlock(BlockCount);
   BlockCount++;
   TF_ActualBlocks[tfIndex]++;
   AlertOncePerBlock[BlockCount-1] = false;
}

//+------------------------------------------------------------------+
//| Draw an Order Block on the Chart                                 |
//+------------------------------------------------------------------+
void DrawOrderBlock(int index) {
   string name = Blocks[index].name;
   datetime startTime = Blocks[index].startTime;
   double high = Blocks[index].high;
   double low = Blocks[index].low;
   color col = Blocks[index].col;
   int strength = Blocks[index].strength;

   ObjectDelete(0, name);
   ObjectCreate(0, name, OBJ_RECTANGLE, 0, startTime, high, TimeCurrent(), low);
   ObjectSetInteger(0, name, OBJPROP_COLOR, col);
   ObjectSetInteger(0, name, OBJPROP_WIDTH, BlockWidth);
   ObjectSetInteger(0, name, OBJPROP_FILL, true);
   
   // Adjust transparency based on strength
   color bgColor = TransparentBlocks ? clrNONE : 
                  (color)((col & 0xFFFFFF) | (strength == 3 ? 0x99000000 : 
                                             (strength == 2 ? 0x66000000 : 0x33000000)));
   
   ObjectSetInteger(0, name, OBJPROP_BGCOLOR, bgColor);
   ObjectSetInteger(0, name, OBJPROP_SELECTED, true);

   if(ShowLabels) {
      ObjectDelete(0, name + "_Label");
      double pipValue = SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 10;
      double labelOffset = pipValue * 2;
      double adjustedOffset = labelOffset;

      for(int i = 0; i < BlockCount; i++) {
         if(i != index && Blocks[i].startTime == startTime) {
            double otherHigh = Blocks[i].high;
            if(MathAbs(high - otherHigh) < pipValue * 5) {
               adjustedOffset += pipValue * 2;
            }
         }
      }

      string labelName = name + "_Label";
      string strengthText = ShowStrengthIndicator ? " | Str: " + IntegerToString(strength) : "";
      ObjectCreate(0, labelName, OBJ_TEXT, 0, TimeCurrent(), high + adjustedOffset);
      ObjectSetString(0, labelName, OBJPROP_TEXT, StringFormat("H: %.5f | L: %.5f | C: %d%s",
                                                              high, low, Blocks[index].contacts, strengthText));
      ObjectSetInteger(0, labelName, OBJPROP_COLOR, col);
      ObjectSetInteger(0, labelName, OBJPROP_FONTSIZE, LabelFontSize);
      ObjectSetString(0, labelName, OBJPROP_FONT, LabelFont);
   }
}

//+------------------------------------------------------------------+
//| Check Price Touches and Proximity Alerts                         |
//+------------------------------------------------------------------+
void CheckPriceTouches() {
   double currentHigh = High[0];
   double currentLow = Low[0];
   double currentClose = Close[0];
   double prevClose = Close[1];
   double pipValue = SymbolInfoDouble(_Symbol, SYMBOL_POINT) * 10;
   double proximityDistance = ProximityDistancePips * pipValue;
   double minReversal = MinReversalPips * pipValue;

   for(int i = 0; i < BlockCount; i++) {
      if(Blocks[i].isBullish && currentHigh > Blocks[i].high) {
         Blocks[i].hasBroken = true;
         Blocks[i].contacts = 0;
         Blocks[i].touched = false;
         AlertOncePerBlock[i] = false;
      } else if(!Blocks[i].isBullish && currentLow < Blocks[i].low) {
         Blocks[i].hasBroken = true;
         Blocks[i].contacts = 0;
         Blocks[i].touched = false;
         AlertOncePerBlock[i] = false;
      }

      bool isHit = ContactByShadowOrBody ? 
                   (currentHigh >= Blocks[i].low && currentLow <= Blocks[i].high) : 
                   (currentClose >= Blocks[i].low && currentClose <= Blocks[i].high);
      bool hasReversed = (Blocks[i].isBullish && currentClose < prevClose && (prevClose - currentClose) >= minReversal) ||
                         (!Blocks[i].isBullish && currentClose > prevClose && (currentClose - prevClose) >= minReversal);
      static bool wasOutsideBlock[1000];

      if(isHit && !Blocks[i].hasBroken && hasReversed && wasOutsideBlock[i]) {
         Blocks[i].touched = true;
         Blocks[i].contacts++;
         if(TF_Alerts[Blocks[i].tfIndex] && !AlertOncePerBlock[i]) {
            string alertText = StringFormat("Price touched and reversed %s Order Block on %s at %.5f", 
                  Blocks[i].isBullish ? "Bullish" : "Bearish", GetTimeframeName(Blocks[i].tfIndex), currentClose);
            Alert(alertText);
            if(EnableSoundAlerts) PlaySound(AlertSoundFile);
            AlertOncePerBlock[i] = true;
         }
         DrawOrderBlock(i);
      }
      wasOutsideBlock[i] = !isHit;

      if(ProximityAlerts && !Blocks[i].hasBroken) {
         bool isNearBlock = (currentClose >= Blocks[i].low - proximityDistance && currentClose <= Blocks[i].high + proximityDistance);
         static bool wasNotNearBlock[1000];
         if(isNearBlock && wasNotNearBlock[i] && !AlertOncePerBlock[i]) {
            string proximityText = StringFormat("Price is near %s Order Block on %s at %.5f (Distance: %.2f pips)", 
                  Blocks[i].isBullish ? "Bullish" : "Bearish", GetTimeframeName(Blocks[i].tfIndex), currentClose, 
                  MathMin(MathAbs(currentClose - Blocks[i].low), MathAbs(currentClose - Blocks[i].high)) / pipValue);
            Alert(proximityText);
            if(EnableSoundAlerts) PlaySound(AlertSoundFile);
            AlertOncePerBlock[i] = true;
         }
         wasNotNearBlock[i] = !isNearBlock;
      }
   }
}

//+------------------------------------------------------------------+
//| Get Timeframe Name                                               |
//+------------------------------------------------------------------+
string GetTimeframeName(int tfIndex) {
   switch(tfIndex) {
      case 0: return "M1";
      case 1: return "M5";
      case 2: return "M15";
      case 3: return "M30";
      case 4: return "H1";
      case 5: return "H4";
      case 6: return "D1";
      case 7: return "W1";
      case 8: return "MN";
      default: return "Unknown";
   }
}

//+------------------------------------------------------------------+
//| Create the Control Panel                                         |
//+------------------------------------------------------------------+
void CreateControlPanel() {
   if(!PanelVisible) {
      ObjectsDeleteAll(0, "Panel_");
      ObjectCreate(0, "ShowPanelButton", OBJ_BUTTON, 0, 0, 0);
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_XDISTANCE, ShowButtonX);
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_YDISTANCE, ShowButtonY);
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_XSIZE, 30);
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_YSIZE, 30);
      ObjectSetString(0, "ShowPanelButton", OBJPROP_TEXT, "+");
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_BGCOLOR, clrGray);
      ObjectSetInteger(0, "ShowPanelButton", OBJPROP_COLOR, clrWhite);
      return;
   }

   ObjectsDeleteAll(0, "Panel_");
   ObjectsDeleteAll(0, "ShowPanelButton");

   ScaledPanelWidth = (int)(PanelWidth * PanelScale);
   ScaledPanelHeight = (int)(PanelHeight * PanelScale);

   ObjectCreate(0, "Panel_BG", OBJ_RECTANGLE_LABEL, 0, 0, 0);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_XDISTANCE, PanelX);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_YDISTANCE, PanelY);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_XSIZE, ScaledPanelWidth);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_YSIZE, ScaledPanelHeight);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_BGCOLOR, PanelBGColor);
   ObjectSetInteger(0, "Panel_BG", OBJPROP_BORDER_TYPE, BORDER_FLAT);

   ObjectCreate(0, "Panel_Title", OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, "Panel_Title", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_Title", OBJPROP_YDISTANCE, PanelY + (int)(5 * PanelScale));
   ObjectSetString(0, "Panel_Title", OBJPROP_TEXT, "Order Block Analyzer");
   ObjectSetInteger(0, "Panel_Title", OBJPROP_COLOR, TextColor);
   ObjectSetInteger(0, "Panel_Title", OBJPROP_FONTSIZE, (int)(10 * PanelScale));

   string tfNames[] = {"M1", "M5", "M15", "M30", "H1", "H4", "D1", "W1", "MN"};
   for(int i = 0; i < 9; i++) {
      ObjectCreate(0, "Panel_TF_" + tfNames[i], OBJ_BUTTON, 0, 0, 0);
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale) + (i % 3) * (int)(65 * PanelScale));
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_YDISTANCE, PanelY + (int)(30 * PanelScale) + (i / 3) * (int)(30 * PanelScale));
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_XSIZE, (int)(60 * PanelScale));
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_YSIZE, (int)(25 * PanelScale));
      ObjectSetString(0, "Panel_TF_" + tfNames[i], OBJPROP_TEXT, tfNames[i]);
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_BGCOLOR, TimeframeStates[i] ? clrLimeGreen : ButtonBGColor);
      ObjectSetInteger(0, "Panel_TF_" + tfNames[i], OBJPROP_COLOR, TextColor);
   }

   ObjectCreate(0, "Panel_LabelToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_YDISTANCE, PanelY + (int)(120 * PanelScale));
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_XSIZE, (int)(90 * PanelScale));
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_LabelToggle", OBJPROP_TEXT, ShowLabels ? "Hide Labels" : "Show Labels");
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_BGCOLOR, ButtonBGColor);
   ObjectSetInteger(0, "Panel_LabelToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_HideToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_XDISTANCE, PanelX + (int)(105 * PanelScale));
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_YDISTANCE, PanelY + (int)(120 * PanelScale));
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_XSIZE, (int)(90 * PanelScale));
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_HideToggle", OBJPROP_TEXT, "Hide Panel");
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_BGCOLOR, ButtonBGColor);
   ObjectSetInteger(0, "Panel_HideToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_TotalLabel", OBJ_LABEL, 0, 0, 0);
   ObjectSetInteger(0, "Panel_TotalLabel", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_TotalLabel", OBJPROP_YDISTANCE, PanelY + (int)(150 * PanelScale));
   ObjectSetInteger(0, "Panel_TotalLabel", OBJPROP_COLOR, TextColor);

   // Block Type Toggle Buttons
   ObjectCreate(0, "Panel_RegularToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_YDISTANCE, PanelY + (int)(180 * PanelScale));
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_RegularToggle", OBJPROP_TEXT, "Regular Blocks");
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_REGULAR ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_BullishRejectionToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_YDISTANCE, PanelY + (int)(210 * PanelScale));
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_BullishRejectionToggle", OBJPROP_TEXT, "Bullish Rejection");
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BULLISH_REJECTION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_BearishRejectionToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_YDISTANCE, PanelY + (int)(240 * PanelScale));
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_BearishRejectionToggle", OBJPROP_TEXT, "Bearish Rejection");
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BEARISH_REJECTION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_BreakerToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_YDISTANCE, PanelY + (int)(270 * PanelScale));
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_BreakerToggle", OBJPROP_TEXT, "Breaker Blocks");
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BREAKER ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_MitigationToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_YDISTANCE, PanelY + (int)(300 * PanelScale));
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_MitigationToggle", OBJPROP_TEXT, "Mitigation Blocks");
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_MITIGATION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_UnmitigatedToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_YDISTANCE, PanelY + (int)(330 * PanelScale));
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_UnmitigatedToggle", OBJPROP_TEXT, "Unmitigated Blocks");
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_UNMITIGATED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_RefinedToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_YDISTANCE, PanelY + (int)(360 * PanelScale));
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_RefinedToggle", OBJPROP_TEXT, "Refined Blocks");
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_REFINED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_LiquidityToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_YDISTANCE, PanelY + (int)(390 * PanelScale));
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_LiquidityToggle", OBJPROP_TEXT, "Liquidity-Induced Blocks");
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_LIQUIDITY_INDUCED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_ImbalanceToggle", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_YDISTANCE, PanelY + (int)(420 * PanelScale));
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_ImbalanceToggle", OBJPROP_TEXT, "Imbalance Blocks");
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_IMBALANCE ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_IncreaseBlocks10", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_YDISTANCE, PanelY + (int)(450 * PanelScale));
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_XSIZE, (int)(90 * PanelScale));
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_IncreaseBlocks10", OBJPROP_TEXT, "+10 Blocks");
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_BGCOLOR, clrGreen);
   ObjectSetInteger(0, "Panel_IncreaseBlocks10", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_DecreaseBlocks10", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_XDISTANCE, PanelX + (int)(105 * PanelScale));
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_YDISTANCE, PanelY + (int)(450 * PanelScale));
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_XSIZE, (int)(90 * PanelScale));
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_YSIZE, (int)(25 * PanelScale));
   ObjectSetString(0, "Panel_DecreaseBlocks10", OBJPROP_TEXT, "-10 Blocks");
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_BGCOLOR, clrRed);
   ObjectSetInteger(0, "Panel_DecreaseBlocks10", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_Clear", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_XDISTANCE, PanelX + (int)(5 * PanelScale));
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_YDISTANCE, PanelY + (int)(480 * PanelScale));
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_XSIZE, (int)(190 * PanelScale));
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_YSIZE, (int)(30 * PanelScale));
   ObjectSetString(0, "Panel_Clear", OBJPROP_TEXT, "Clear All Blocks");
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_BGCOLOR, clrIndianRed);
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_COLOR, TextColor);

   ObjectCreate(0, "Panel_ResizeIncButton", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_XDISTANCE, PanelX + ScaledPanelWidth - (int)(40 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_YDISTANCE, PanelY + ScaledPanelHeight - (int)(20 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_XSIZE, (int)(20 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_YSIZE, (int)(20 * PanelScale));
   ObjectSetString(0, "Panel_ResizeIncButton", OBJPROP_TEXT, "+");
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_BGCOLOR, clrOrange);
   ObjectSetInteger(0, "Panel_ResizeIncButton", OBJPROP_COLOR, clrBlack);

   ObjectCreate(0, "Panel_ResizeDecButton", OBJ_BUTTON, 0, 0, 0);
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_XDISTANCE, PanelX + ScaledPanelWidth - (int)(20 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_YDISTANCE, PanelY + ScaledPanelHeight - (int)(20 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_XSIZE, (int)(20 * PanelScale));
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_YSIZE, (int)(20 * PanelScale));
   ObjectSetString(0, "Panel_ResizeDecButton", OBJPROP_TEXT, "-");
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_BGCOLOR, clrOrange);
   ObjectSetInteger(0, "Panel_ResizeDecButton", OBJPROP_COLOR, clrBlack);

   UpdatePanel();
}

//+------------------------------------------------------------------+
//| Update Control Panel Display                                     |
//+------------------------------------------------------------------+
void UpdatePanel() {
   if(!PanelVisible) {
      CreateControlPanel();
      return;
   }

   for(int i = 0; i < 9; i++) {
      string tfName = "Panel_TF_" + TFToString(Timeframes[i]);
      if(ObjectFind(0, tfName) >= 0) {
         ObjectSetInteger(0, tfName, OBJPROP_BGCOLOR, TimeframeStates[i] ? clrLimeGreen : ButtonBGColor);
         ObjectSetInteger(0, tfName, OBJPROP_STATE, TimeframeStates[i]);
      }
   }

   ObjectSetString(0, "Panel_LabelToggle", OBJPROP_TEXT, ShowLabels ? "Hide Labels" : "Show Labels");
   ObjectSetString(0, "Panel_HideToggle", OBJPROP_TEXT, "Hide Panel");

   ObjectSetInteger(0, "Panel_RegularToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_REGULAR ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BullishRejectionToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BULLISH_REJECTION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BearishRejectionToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BEARISH_REJECTION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_BreakerToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_BREAKER ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_MitigationToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_MITIGATION ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_UnmitigatedToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_UNMITIGATED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_RefinedToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_REFINED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_LiquidityToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_LIQUIDITY_INDUCED ? clrLimeGreen : ButtonBGColor);
   ObjectSetInteger(0, "Panel_ImbalanceToggle", OBJPROP_BGCOLOR, ActiveBlockType == BLOCK_IMBALANCE ? clrLimeGreen : ButtonBGColor);

   int activeTfIndex = -1;
   for(int i = 0; i < 9; i++) {
      if(TimeframeStates[i]) {
         activeTfIndex = i;
         break;
      }
   }
   if(activeTfIndex >= 0) {
      ObjectSetString(0, "Panel_TotalLabel", OBJPROP_TEXT, "Total Blocks " + IntegerToString(TF_ActualBlocks[activeTfIndex]));
   } else {
      ObjectSetString(0, "Panel_TotalLabel", OBJPROP_TEXT, "Total Blocks 0");
   }
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_BGCOLOR, clrIndianRed);
   ObjectSetInteger(0, "Panel_Clear", OBJPROP_STATE, false);
}

//+------------------------------------------------------------------+
//| Redraw All Blocks for Active Timeframes                          |
//+------------------------------------------------------------------+
void RedrawAllBlocks() {
   ObjectsDeleteAll(0, "OrderBlock_");
   BlockCount = 0;
   ArrayInitialize(TF_ActualBlocks, 0);
   ArrayInitialize(AlertOncePerBlock, false);

   for(int tfIdx = 0; tfIdx < 9; tfIdx++) {
      if(TimeframeStates[tfIdx]) {
         int bars = iBars(NULL, Timeframes[tfIdx]);
         for(int i = 1; i < MathMin(bars, TF_Lookback[tfIdx]); i++) {
            DetectAndDrawOrderBlock(i, Timeframes[tfIdx], tfIdx);
         }
      }
   }
   ChartRedraw();
}

//+------------------------------------------------------------------+
//| Convert Timeframe to String                                      |
//+------------------------------------------------------------------+
string TFToString(int tf) {
   switch(tf) {
      case 1: return "M1";
      case 5: return "M5";
      case 15: return "M15";
      case 30: return "M30";
      case 60: return "H1";
      case 240: return "H4";
      case 1440: return "D1";
      case 10080: return "W1";
      case 43200: return "MN";
      default: return "Unknown";
   }
}

//+------------------------------------------------------------------+
//| Chart Event Handler                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id, const long &lparam, const double &dparam, const string &sparam) {
   if(id == CHARTEVENT_OBJECT_CLICK) {
      if(StringFind(sparam, "Panel_TF_") == 0) {
         string tfName = StringSubstr(sparam, 9);
         for(int i = 0; i < 9; i++) {
            if(tfName == TFToString(Timeframes[i])) {
               TimeframeStates[i] = !TimeframeStates[i];
               RedrawAllBlocks();
               UpdatePanel();
               break;
            }
         }
      } else if(sparam == "Panel_LabelToggle") {
         ShowLabels = !ShowLabels;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_HideToggle") {
         PanelVisible = false;
         ShowButtonX = PanelX;
         ShowButtonY = PanelY;
         CreateControlPanel();
      } else if(sparam == "ShowPanelButton") {
         PanelVisible = true;
         PanelX = ShowButtonX;
         PanelY = ShowButtonY;
         CreateControlPanel();
      } else if(sparam == "Panel_RegularToggle") {
         ActiveBlockType = BLOCK_REGULAR;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_BullishRejectionToggle") {
         ActiveBlockType = BLOCK_BULLISH_REJECTION;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_BearishRejectionToggle") {
         ActiveBlockType = BLOCK_BEARISH_REJECTION;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_BreakerToggle") {
         ActiveBlockType = BLOCK_BREAKER;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_MitigationToggle") {
         ActiveBlockType = BLOCK_MITIGATION;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_UnmitigatedToggle") {
         ActiveBlockType = BLOCK_UNMITIGATED;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_RefinedToggle") {
         ActiveBlockType = BLOCK_REFINED;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_LiquidityToggle") {
         ActiveBlockType = BLOCK_LIQUIDITY_INDUCED;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_ImbalanceToggle") {
         ActiveBlockType = BLOCK_IMBALANCE;
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_IncreaseBlocks10") {
         for(int i = 0; i < 9; i++) {
            if(TimeframeStates[i]) {
               TF_Lookback[i] += 10; // Single click adds 10
               RedrawAllBlocks();
            }
         }
         UpdatePanel();
      } else if(sparam == "Panel_DecreaseBlocks10") {
         for(int i = 0; i < 9; i++) {
            if(TimeframeStates[i] && TF_Lookback[i] > 10) {
               TF_Lookback[i] -= 10; // Single click reduces 10
               RedrawAllBlocks();
            }
         }
         UpdatePanel();
      } else if(sparam == "Panel_Clear") {
         ArrayInitialize(TimeframeStates, 0);
         RedrawAllBlocks();
         UpdatePanel();
      } else if(sparam == "Panel_ResizeIncButton") {
         if(PanelScale >= 2.0) {
            PanelScale = 1.0;
         } else {
            PanelScale += 0.1;
         }
         CreateControlPanel();
      } else if(sparam == "Panel_ResizeDecButton") {
         if(PanelScale <= 0.5) {
            PanelScale = 1.0;
         } else {
            PanelScale -= 0.1;
         }
         CreateControlPanel();
      } else if(sparam == "Panel_BG") {
         PanelMoving = true;
         PanelOffsetX = (int)lparam - PanelX;
         PanelOffsetY = (int)dparam - PanelY;
      } else if(sparam == "ShowPanelButton") {
         ShowButtonMoving = true;
         ShowButtonOffsetX = (int)lparam - ShowButtonX;
         ShowButtonOffsetY = (int)dparam - ShowButtonY;
      }
   }

   if(id == CHARTEVENT_MOUSE_MOVE && PanelMoving) {
      PanelX = (int)lparam - PanelOffsetX;
      PanelY = (int)dparam - PanelOffsetY;
      CreateControlPanel();
   }
   if(id == CHARTEVENT_MOUSE_MOVE && ShowButtonMoving) {
      ShowButtonX = (int)lparam - ShowButtonOffsetX;
      ShowButtonY = (int)dparam - ShowButtonOffsetY;
      CreateControlPanel();
   }
   if(id == CHARTEVENT_MOUSE_MOVE && (lparam & 0x80000000) == 0) {
      PanelMoving = false;
      ShowButtonMoving = false;
   }

   if(id == CHARTEVENT_OBJECT_CLICK && StringFind(sparam, "OrderBlock_") == 0) {
      for(int i = 0; i < BlockCount; i++) {
         if(Blocks[i].name == sparam) {
            Blocks[i].isDragging = !Blocks[i].isDragging;
            ObjectSetInteger(0, sparam, OBJPROP_SELECTED, Blocks[i].isDragging);
            break;
         }
      }
   }

   if(id == CHARTEVENT_OBJECT_CHANGE) {
      for(int i = 0; i < BlockCount; i++) {
         if(Blocks[i].isDragging && Blocks[i].name == sparam) {
            Blocks[i].startTime = (datetime)ObjectGetInteger(0, sparam, OBJPROP_TIME1);
            Blocks[i].high = ObjectGetDouble(0, sparam, OBJPROP_PRICE1);
            Blocks[i].low = ObjectGetDouble(0, sparam, OBJPROP_PRICE2);
            DrawOrderBlock(i);
            break;
         }
      }
   }
}

