.class public Lcom/oneplus/core/oimc/OIMCRule;
.super Ljava/lang/Object;
.source "OIMCRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/core/oimc/OIMCRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LEVEL:I = 0x32

.field public static final RULE_ALLOWWHITE_ACTIVITY:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ALLOWWHITE_VIBRATION:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_AUDIOPROCESSES_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_CAR_MODE_DOCKHANDLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_CAR_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_COLORREADMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_COLORREADMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_COLORREADMODE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_AUTOBACKLIGHT:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_FINGERPRINTGESTURE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ENABLE_ANSWERWITHOUTUI:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ENABLE_ONEPLUSRAMBOOST:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ESPORTMODE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FINGERPRINTMODE_COLORDISABLE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FINGERPRINTMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FINGERPRINTMODE_DISABLE_GOOGLEMATRIX:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FINGERPRINTMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FINGERPRINTMODE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_FLOATINGWINDOW_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_GAME_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_GOOGLEMATRIXMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_GOOGLEMATRIXMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_GOOGLEMATRIXMODE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_GOOGLEMATRIXMODE_GOOGLEMATRIX:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_KEYBLOCKING:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_NIGHTMODE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_NOTIFYFOR3PTYCALLSBLOCKING:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_NOTIFYFOR3PTYCALLSBLOCKING_CARMODE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_READMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_READMODE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_SPECIAL_IMCALLING_HANDLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_WIFIBACKGROUD_NETLIMIT:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ZEN_MODE_LEDCONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final RULE_ZEN_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;


# instance fields
.field private mAction:I

.field private mDifferenceSwitch:[Ljava/lang/String;

.field private mFuncName:Ljava/lang/String;

.field private mLevel:I

.field private mReserved:I

.field private mTriggerModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 92
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v1, "GameMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeadsUpNotification"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION:Lcom/oneplus/core/oimc/OIMCRule;

    .line 99
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "ZenMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "HeadsUpNotificationZen"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_HEADSUPNOTIFICATION_ZEN:Lcom/oneplus/core/oimc/OIMCRule;

    .line 106
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ZenModeObserver"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ZEN_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 113
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "GameModeObserver"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_GAME_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 120
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v3, "CarMode"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "CarModeObserver"

    invoke-direct {v0, v7, v4, v6, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_CAR_MODE_OBSERVER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 136
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "WiFiBackgroudNetLimit"

    invoke-direct {v0, v7, v4, v6, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_WIFIBACKGROUD_NETLIMIT:Lcom/oneplus/core/oimc/OIMCRule;

    .line 146
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v6, "popNotify"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const-string v9, "NotifyFor3PtyCallsBlocking"

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_NOTIFYFOR3PTYCALLSBLOCKING:Lcom/oneplus/core/oimc/OIMCRule;

    .line 156
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v18

    const-string v6, "not popNotify"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v21

    const-string v16, "NotifyFor3PtyCallsBlocking_CarMode"

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x33

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_NOTIFYFOR3PTYCALLSBLOCKING_CARMODE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 166
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const-string v13, ""

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "SpecialIMCallingHandler"

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x32

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_SPECIAL_IMCALLING_HANDLER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 176
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v20

    const-string v15, "CarModeDockHandler"

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x32

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_CAR_MODE_DOCKHANDLER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 185
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "TurnOffAutoBacklight"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_AUTOBACKLIGHT:Lcom/oneplus/core/oimc/OIMCRule;

    .line 194
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "KeyBlocking"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_KEYBLOCKING:Lcom/oneplus/core/oimc/OIMCRule;

    .line 203
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "AllowWhiteVibration"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ALLOWWHITE_VIBRATION:Lcom/oneplus/core/oimc/OIMCRule;

    .line 212
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "AllowWhiteActivity"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ALLOWWHITE_ACTIVITY:Lcom/oneplus/core/oimc/OIMCRule;

    .line 221
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "ZenModeLedController"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ZEN_MODE_LEDCONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 230
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "FloatingWindowController"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FLOATINGWINDOW_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 239
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioProcessesController"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_AUDIOPROCESSES_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    .line 248
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "NightMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorBalance"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_NIGHTMODE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 257
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "GrayColor"

    invoke-direct {v0, v7, v4, v6, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_READMODE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 264
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v2, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_READMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 271
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v6, v8, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 278
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v3, v6, v8, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 291
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v8, "FingerPrintMode"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "ColorDisable"

    invoke-direct {v0, v10, v4, v9, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FINGERPRINTMODE_COLORDISABLE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 298
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    const-string v9, "fast"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    const-string v12, "GrayColor"

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x32

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FINGERPRINTMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 305
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v21

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v24

    const-string v19, "ColorBalance"

    const/16 v20, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x32

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FINGERPRINTMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 314
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "AnswerWithoutUI"

    invoke-direct {v0, v11, v4, v10, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ENABLE_ANSWERWITHOUTUI:Lcom/oneplus/core/oimc/OIMCRule;

    .line 323
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v10, "GoogleMatrixMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "gooleMatrix"

    invoke-direct {v0, v12, v4, v11, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_GOOGLEMATRIXMODE_GOOGLEMATRIX:Lcom/oneplus/core/oimc/OIMCRule;

    .line 330
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v7, v6, v11, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_GOOGLEMATRIXMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 337
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v3, v6, v11, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_GOOGLEMATRIXMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 344
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "PaperColor"

    invoke-direct {v0, v11, v6, v10, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_GOOGLEMATRIXMODE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 351
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v15

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    const-string v13, "gooleMatrix"

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x32

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FINGERPRINTMODE_DISABLE_GOOGLEMATRIX:Lcom/oneplus/core/oimc/OIMCRule;

    .line 360
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v10, "ColorReadMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v4, v12, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_COLORREADMODE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 367
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v6, v12, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 374
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v7, v6, v11, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_COLORREADMODE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 381
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v6, v7, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_COLORREADMODE_DISABLE_COLORBALANCE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 388
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v16

    const-string v11, "PaperColor"

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/16 v15, 0x32

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_FINGERPRINTMODE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    .line 398
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v6, "FingerprintGestureLimit"

    invoke-direct {v0, v6, v4, v3, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_FINGERPRINTGESTURE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 407
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusRamboost"

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ENABLE_ONEPLUSRAMBOOST:Lcom/oneplus/core/oimc/OIMCRule;

    .line 416
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ESportMode"

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->RULE_ESPORTMODE:Lcom/oneplus/core/oimc/OIMCRule;

    .line 452
    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule$1;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCRule$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 430
    invoke-virtual {p0, p1}, Lcom/oneplus/core/oimc/OIMCRule;->readFromParcel(Landroid/os/Parcel;)V

    .line 431
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/core/oimc/OIMCRule$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/core/oimc/OIMCRule$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "triggerModes"    # [Ljava/lang/String;
    .param p4, "reserved"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 38
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    .line 40
    iput-object p3, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    .line 41
    iput p4, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    .line 42
    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 1
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "triggerModes"    # [Ljava/lang/String;
    .param p4, "reserved"    # I
    .param p5, "level"    # I
    .param p6, "differenceSwitch"    # [Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 47
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    .line 49
    iput-object p3, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    .line 51
    iput p5, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 52
    iput-object p6, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    return v0
.end method

.method public getDifferenceSwitch()[Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    return-object v0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    return v0
.end method

.method public getReservedInt()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    return v0
.end method

.method public getTriggerModes()[Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    .line 450
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 435
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mFuncName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mTriggerModes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mReserved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRule;->mDifferenceSwitch:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 441
    return-void
.end method
