.class public Lcom/android/server/biometrics/fingerprint/FacolaView;
.super Landroid/widget/ImageView;
.source "FacolaView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TOUCHED_DIM:F = 0.9f

.field private static final UNTOUCHED_DIM:F


# instance fields
.field private amog787_boost:Z

.field private bypassedBrightness:Z

.field private isDown:Z

.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private final mFullGreen:Landroid/view/View;

.field private mFullGreenDisplayed:Z

.field private mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

.field private mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

.field private mH:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHidden:Z

.field private mIDisplayFeature:Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;

.field private mInsideCircle:Z

.field private final mPaintFingerprint:Landroid/graphics/Paint;

.field private final mPaintShow:Landroid/graphics/Paint;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mParamsTouched:Landroid/view/WindowManager$LayoutParams;

.field private mUiHidden:Z

.field private mW:I

.field private final mWM:Landroid/view/WindowManager;

.field private mX:I

.field private mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

.field private mY:I

.field private noDim:Z

.field private objectsToKeep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private xiaomiAsynchronous:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    .line 61
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    .line 62
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mIDisplayFeature:Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;

    .line 63
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 65
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 66
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->amog787_boost:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    .line 83
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    .line 91
    new-instance v2, Lcom/android/server/biometrics/fingerprint/FacolaView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/fingerprint/FacolaView$1;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    .line 102
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 103
    .local v2, "displayRealSize":Landroid/graphics/Point;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "FacolaThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 108
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    .line 111
    const-string/jumbo v4, "persist.sys.amog787.nodim"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 112
    const-string/jumbo v4, "persist.sys.amog787.boost"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->amog787_boost:Z

    .line 113
    const-string v4, ""

    const-string/jumbo v5, "persist.vendor.sys.fp.fod.location.X_Y"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "location":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 115
    const-string/jumbo v7, "persist.sys.fp.fod.location.X_Y"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 116
    :cond_0
    const-string/jumbo v7, "persist.vendor.sys.fp.fod.size.width_height"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "size":[Ljava/lang/String;
    array-length v9, v7

    if-eq v9, v8, :cond_1

    .line 118
    const-string/jumbo v9, "persist.sys.fp.fod.size.width_height"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 119
    :cond_1
    const-string v4, "amog787-Enroll"

    const-string v6, "FacolaView hello"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    array-length v6, v7

    const/4 v9, -0x1

    if-ne v6, v8, :cond_2

    array-length v6, v5

    if-ne v6, v8, :cond_2

    .line 121
    const-string v6, "Got real values"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 123
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 124
    aget-object v6, v7, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 125
    aget-object v6, v7, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    goto :goto_0

    .line 127
    :cond_2
    iput v9, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 128
    iput v9, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 129
    iput v9, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 130
    iput v9, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    .line 133
    :goto_0
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, 0x0

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 135
    const-string/jumbo v6, "persist.sys.amog787.fod.gamma"

    const-string v10, "2.2"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "gammaStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 138
    .local v10, "gamma":F
    iget-object v11, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v11, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    const v12, -0xff0100

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v11, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v11, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    const/16 v12, 0x18

    const/16 v13, 0xff

    invoke-static {v12, v0, v13, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0, p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    const-string v0, "Created facola..."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    invoke-static {}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->getService()Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Failed getting xiaomi fingerprint service"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-static {}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->getService()Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_2

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting goodix fingerprint service"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    goto :goto_3

    .line 157
    :catch_2
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting goodix2 fingerprint service"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-static {}, Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;->getService()Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mIDisplayFeature:Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    goto :goto_4

    .line 162
    :catch_3
    move-exception v0

    .line 163
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting displayfeature fingerprint service"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v0, "/sys/class/drm/card0-DSI-1/fod_ui_ready"

    .line 168
    .local v0, "xiaomiFodReadyPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 171
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FacolaView$2;

    invoke-direct {v1, p0, v0, v8, v0}, Lcom/android/server/biometrics/fingerprint/FacolaView$2;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    .local v1, "xiaomiUiReadyCb":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 191
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v1    # "xiaomiUiReadyCb":Landroid/os/FileObserver;
    :cond_3
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const-string/jumbo v4, "persist.sys.amog787.has_fod"

    if-eq v1, v9, :cond_4

    .line 195
    const-string/jumbo v1, "true"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 197
    :cond_4
    const-string v1, "false"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_5
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FacolaView$3;

    invoke-direct {v1, p0, v10}, Lcom/android/server/biometrics/fingerprint/FacolaView$3;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;F)V

    sput-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;

    .line 221
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->bypassedBrightness:Z

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FacolaView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FacolaView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-static {p0, p1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    return v0
.end method

.method public static execRootCmdSilent(Ljava/lang/String;)I
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 478
    .local v1, "runtime":Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 479
    .local v2, "p":Ljava/lang/Process;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 480
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 481
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 482
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 485
    const-string v3, "amog787"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execRootCmdSilent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    goto :goto_1

    .line 486
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 498
    .end local v1    # "runtime":Ljava/lang/Runtime;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 499
    .local v1, "th":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 501
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 504
    goto :goto_0

    .line 502
    :catch_1
    move-exception v2

    .line 503
    .local v2, "e3":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 506
    .end local v2    # "e3":Ljava/io/IOException;
    :cond_0
    :goto_0
    throw v1

    .line 489
    .end local v1    # "th":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 490
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    if-eqz v0, :cond_1

    .line 493
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 496
    goto :goto_1

    .line 494
    :catch_3
    move-exception v2

    .line 495
    .local v2, "e5":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 507
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "e5":Ljava/io/IOException;
    :cond_1
    :goto_1
    nop

    .line 508
    const/4 v1, -0x1

    return v1
.end method

.method static synthetic lambda$onDraw$1(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 276
    return-void
.end method

.method static synthetic lambda$onDraw$3(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 296
    return-void
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 445
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 448
    .local v1, "b":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 449
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "b":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "value"    # Ljava/lang/String;

    .line 466
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 456
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "amog787"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 402
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "amog787-Enroll"

    const-string v3, "Hide"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-eqz v1, :cond_0

    return-void

    .line 405
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 406
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-eqz v3, :cond_2

    .line 407
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->amog787_boost:Z

    if-eqz v3, :cond_1

    .line 408
    const-string v3, "/sys/class/drm/card0-DSI-1/disp_param"

    const-string v4, "0xe0000"

    invoke-static {v3, v4}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    const-string v3, "Removing full green because of hide"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 412
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 414
    :cond_2
    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 417
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    if-eqz v3, :cond_4

    .line 418
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_4
    goto :goto_0

    .line 420
    :catch_0
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed calling xiaomi fp extcmd"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    const-string v4, "/sys/devices/virtual/touch/tp_dev/fod_status"

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v3, "writer":Ljava/io/PrintWriter;
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    .end local v3    # "writer":Ljava/io/PrintWriter;
    goto :goto_1

    .line 427
    :catch_1
    move-exception v3

    .line 428
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed setting fod status for touchscreen"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mIDisplayFeature:Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;

    const/16 v4, 0x11

    invoke-interface {v3, v0, v4, v0, v1}, Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;->setFeature(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    goto :goto_2

    .line 432
    :catch_2
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed setting setFeature(0, 17, 0, 1)"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "Removed facola"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$A_ne7JCY0yYrFnAEp-Ajp0onPbk;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$A_ne7JCY0yYrFnAEp-Ajp0onPbk;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void

    .line 414
    :cond_5
    :goto_3
    return-void
.end method

.method public synthetic lambda$hide$6$FacolaView()V
    .locals 1

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 439
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 440
    return-void
.end method

.method public synthetic lambda$onDraw$0$FacolaView()V
    .locals 3

    .line 257
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->amog787_boost:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "/sys/class/drm/card0-DSI-1/disp_param"

    const-string v1, "0x20000"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    const-string v0, "amog787-Enroll"

    const-string v1, "Adding full green because of finger pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 262
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    return-void
.end method

.method public synthetic lambda$onDraw$2$FacolaView(I)V
    .locals 4
    .param p1, "nitValue"    # I

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    invoke-interface {v0, v1, p1}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->goodixExtendCommand(II)I

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    const/16 v1, 0x600

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;

    invoke-interface {v0, v1, v2, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_2
    :goto_0
    goto :goto_1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "amog787-Enroll"

    const-string v2, "Failed calling late fp extcmd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public synthetic lambda$onDraw$4$FacolaView()V
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->amog787_boost:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "/sys/class/drm/card0-DSI-1/disp_param"

    const-string v1, "0xe0000"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const-string v0, "amog787-Enroll"

    const-string v1, "Removing full green because of finger released"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public synthetic lambda$show$5$FacolaView()V
    .locals 2

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 395
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 226
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawing at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amog787-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    const-string v2, "Failed calling fp extcmd"

    if-eqz v0, :cond_3

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 233
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 235
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 237
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 239
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 240
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "Fingerprint on display.touched"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x10a

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v0, :cond_0

    .line 247
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->bypassedBrightness:Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "android"

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 255
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    if-nez v0, :cond_2

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 267
    const/4 v0, 0x2

    .line 268
    .local v0, "nitValue":I
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;

    invoke-direct {v4, p0, v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;I)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "nitValue":I
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_3

    .line 287
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    if-eqz v0, :cond_7

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 290
    :try_start_1
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v4, 0xa

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    if-nez v3, :cond_4

    .line 291
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    invoke-interface {v3, v4, v0}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I

    goto :goto_1

    .line 292
    :cond_4
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    if-eqz v3, :cond_5

    .line 293
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    invoke-interface {v3, v4, v0}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->goodixExtendCommand(II)I

    goto :goto_1

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    const/16 v3, 0x601

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$seFg3AT-ugE-LrwUbXirUy4ypmY;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$seFg3AT-ugE-LrwUbXirUy4ypmY;

    invoke-interface {v0, v3, v4, v5}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :cond_6
    :goto_1
    goto :goto_2

    .line 298
    :catch_1
    move-exception v0

    .line 299
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$fZcEQMgGEb-lz7rumHr-pJcHGGo;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$fZcEQMgGEb-lz7rumHr-pJcHGGo;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_8
    :goto_3
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 315
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 320
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 322
    .local v3, "y":F
    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    int-to-float v6, v5

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_0

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v0

    .line 323
    .local v5, "newInside":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 324
    const/4 v5, 0x0

    .line 326
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", inside = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "amog787-Enroll"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    if-ne v5, v6, :cond_2

    return v6

    .line 328
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->invalidate()V

    .line 332
    iget-boolean v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    if-nez v6, :cond_4

    .line 334
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 337
    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return v0

    .line 341
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x3f666666    # 0.9f

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return v2
.end method

.method public show()V
    .locals 5

    .line 351
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "amog787-Enroll"

    const-string v2, "Show"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 355
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    if-ne v2, v3, :cond_1

    goto :goto_3

    .line 358
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/sys/devices/virtual/touch/tp_dev/fod_status"

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v2, "writer":Ljava/io/PrintWriter;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed setting fod status for touchscreen"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mIDisplayFeature:Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-interface {v2, v0, v3, v4, v4}, Lvendor/xiaomi/hardware/displayfeature/V1_0/IDisplayFeature;->setFeature(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed setting setFeature(0, 17, 1, 1)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 371
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 373
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 374
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 375
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 377
    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 378
    const-string v1, "Fingerprint on display.untouched"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4010a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 383
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 384
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    .line 387
    :cond_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 390
    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "android"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 392
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 393
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$w1wADtKfhyKGFyd6Kvjt7wdupjk;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$w1wADtKfhyKGFyd6Kvjt7wdupjk;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void

    .line 355
    :cond_3
    :goto_3
    return-void
.end method
