.class public Lcom/android/server/biometrics/fingerprint/FacolaView;
.super Landroid/widget/ImageView;
.source "FacolaView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TOUCHED_DIM:F = 0.9f

.field private static final UNTOUCHED_DIM:F


# instance fields
.field private bypassedBrightness:Z

.field private final hbmCtrl1:Ljava/io/File;

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

.field private mInsideCircle:Z

.field private mOppoFingerprint:Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field private final mPaintFingerprint:Landroid/graphics/Paint;

.field private final mPaintShow:Landroid/graphics/Paint;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mParamsTouched:Landroid/view/WindowManager$LayoutParams;

.field private mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

.field private mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

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

.field private final oppoFod:Ljava/io/File;

.field private final samsungFod:Z

.field private xiaomiAsynchronous:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    .line 59
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    .line 60
    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    .line 61
    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    .line 62
    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    .line 63
    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 64
    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mOppoFingerprint:Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 65
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 66
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    .line 77
    const-string v0, "fod_enable"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungHasCmd(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungFod:Z

    .line 80
    iput-boolean v10, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    .line 84
    iput-boolean v10, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 86
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 87
    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 88
    iput-boolean v10, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    .line 353
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/leds/hbm_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->hbmCtrl1:Ljava/io/File;

    .line 355
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/oppo_display/notify_fppress"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->oppoFod:Ljava/io/File;

    .line 92
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FacolaView$1;

    move-object/from16 v12, p1

    invoke-direct {v0, v9, v12}, Lcom/android/server/biometrics/fingerprint/FacolaView$1;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Landroid/content/Context;)V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    .line 103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v13, v0

    .line 104
    .local v13, "displayRealSize":Landroid/graphics/Point;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v14, v0

    .line 105
    .local v14, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 106
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung FOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungFod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FacolaThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    .line 114
    const-string/jumbo v0, "persist.sys.phh.nodim"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 115
    const-string v0, ""

    const-string/jumbo v1, "persist.vendor.sys.fp.fod.location.X_Y"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "location":[Ljava/lang/String;
    array-length v3, v1

    const/4 v15, 0x2

    if-eq v3, v15, :cond_0

    .line 117
    const-string/jumbo v3, "persist.sys.fp.fod.location.X_Y"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    .line 116
    :cond_0
    move-object v8, v1

    .line 118
    .end local v1    # "location":[Ljava/lang/String;
    .local v8, "location":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "persist.vendor.sys.fp.fod.size.width_height"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "size":[Ljava/lang/String;
    array-length v3, v1

    if-eq v3, v15, :cond_1

    .line 120
    const-string/jumbo v3, "persist.sys.fp.fod.size.width_height"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    .line 119
    :cond_1
    move-object v6, v1

    .line 121
    .end local v1    # "size":[Ljava/lang/String;
    .local v6, "size":[Ljava/lang/String;
    :goto_1
    const-string v7, "PHH-Enroll"

    const-string v0, "FacolaView hello"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    array-length v0, v6

    const/4 v5, -0x1

    if-ne v0, v15, :cond_2

    array-length v0, v8

    if-ne v0, v15, :cond_2

    .line 123
    const-string v0, "Got real values"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    aget-object v0, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 125
    aget-object v0, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 126
    aget-object v0, v6, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 127
    aget-object v0, v6, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    goto :goto_2

    .line 140
    :cond_2
    iput v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 141
    iput v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 142
    iput v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 143
    iput v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    .line 146
    :goto_2
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 148
    const-string/jumbo v0, "persist.vendor.fingerprint.optical.iconsize"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 149
    .local v4, "oppoSize":I
    if-lez v4, :cond_3

    .line 150
    iput v4, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 151
    iput v4, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    .line 153
    :cond_3
    const-string/jumbo v0, "persist.vendor.fingerprint.optical.iconlocation"

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .local v3, "oppoLocation":I
    const-string v1, ", "

    if-lez v3, :cond_4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got Oppo icon location "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tscreen size "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v0, v13, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v15

    iget v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    div-int/2addr v5, v15

    sub-int/2addr v0, v5

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 158
    iget v0, v13, Landroid/graphics/Point;->y:I

    iget v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    div-int/2addr v5, v15

    sub-int/2addr v0, v5

    sub-int/2addr v0, v3

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tfacola at  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 163
    :cond_4
    const-string/jumbo v0, "persist.sys.phh.fod.gamma"

    const-string v5, "2.2"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 164
    .local v17, "gammaStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 166
    .local v5, "gamma":F
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    const v15, -0xff0100

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintShow:Landroid/graphics/Paint;

    const/16 v15, 0x18

    const/16 v11, 0xff

    invoke-static {v15, v10, v11, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {v9, v9}, Lcom/android/server/biometrics/fingerprint/FacolaView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    const-string v0, "Created facola..."

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_0
    invoke-static {}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->getService()Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_3

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Failed getting xiaomi fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_1
    invoke-static {}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->getService()Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    goto :goto_4

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting goodix fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_2
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    goto :goto_5

    .line 185
    :catch_2
    move-exception v0

    .line 186
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting goodix2 fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    goto :goto_6

    .line 190
    :catch_3
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting samsung fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 197
    goto :goto_7

    .line 195
    :catch_4
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting samsung 3.0 fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-static {}, Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mOppoFingerprint:Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 202
    goto :goto_8

    .line 200
    :catch_5
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "Failed getting oppo fingerprint service"

    invoke-static {v7, v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-nez v0, :cond_6

    iget-object v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    move/from16 v21, v3

    move/from16 v20, v4

    move/from16 v31, v5

    move-object/from16 v16, v6

    move-object/from16 v35, v8

    move/from16 v19, v10

    goto/16 :goto_b

    .line 205
    :cond_6
    :goto_9
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 206
    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->bypassedBrightness:Z

    .line 208
    const-string v0, "/sys/class/fingerprint/fingerprint/position"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "fodPositionString":Ljava/lang/String;
    sget-object v15, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v10, "qcom"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 211
    const-string v10, "/sys/class/backlight/panel0-backlight/brightness"

    .local v10, "brightnessFile":Ljava/lang/String;
    goto :goto_a

    .line 213
    .end local v10    # "brightnessFile":Ljava/lang/String;
    :cond_7
    const-string v10, "/sys/class/lcd/panel/device/backlight/panel/brightness"

    .line 215
    .restart local v10    # "brightnessFile":Ljava/lang/String;
    :goto_a
    const-string v15, "/sys/class/lcd/panel/mask_brightness"

    invoke-static {v15}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 216
    .local v15, "maskBrightnessStr":Ljava/lang/String;
    move/from16 v20, v4

    .end local v4    # "oppoSize":I
    .local v20, "oppoSize":I
    const-string v4, "/sys/class/lcd/panel/actual_mask_brightness"

    .line 218
    .local v4, "actualMaskBrightnessPath":Ljava/lang/String;
    move/from16 v21, v3

    .end local v3    # "oppoLocation":I
    .local v21, "oppoLocation":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    .end local v4    # "actualMaskBrightnessPath":Ljava/lang/String;
    .local v22, "actualMaskBrightnessPath":Ljava/lang/String;
    const-string v4, "Got fod position, mask brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v11, :cond_8

    if-eqz v15, :cond_8

    .line 221
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 222
    .local v23, "maskBrightness":D
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fodPositionArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    .line 224
    .local v25, "bottomMM":F
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    .line 226
    .local v26, "areaSizeMM":F
    const v1, 0x3d214285

    mul-float v27, v25, v1

    .line 227
    .local v27, "bottomInch":F
    mul-float v28, v26, v1

    .line 229
    .local v28, "areaSizeInch":F
    iget v1, v14, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float v1, v1, v27

    float-to-int v4, v1

    .line 230
    .local v4, "bottomPx":I
    iget v1, v14, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float v1, v1, v28

    float-to-int v3, v1

    .line 231
    .local v3, "areaSizePx":I
    iput v3, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    .line 232
    iput v3, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    .line 233
    iget v1, v13, Landroid/graphics/Point;->x:I

    const/16 v18, 0x2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v29, v0

    .end local v0    # "fodPositionArray":[Ljava/lang/String;
    .local v29, "fodPositionArray":[Ljava/lang/String;
    iget v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    .line 234
    iget v0, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung computed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v19, 0x0

    aput-object v1, v0, v19

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    iget v2, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v2, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "fod_rect,%d,%d,%d,%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungCmd(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading brightness file gives "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v30, Lcom/android/server/biometrics/fingerprint/FacolaView$2;

    const/16 v31, 0x2

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    move/from16 v32, v3

    .end local v3    # "areaSizePx":I
    .local v32, "areaSizePx":I
    move-object v3, v10

    move/from16 v33, v4

    .end local v4    # "bottomPx":I
    .local v33, "bottomPx":I
    move/from16 v4, v31

    move/from16 v31, v5

    .end local v5    # "gamma":F
    .local v31, "gamma":F
    move-object v5, v10

    move-object/from16 v16, v6

    move-object/from16 v34, v7

    .end local v6    # "size":[Ljava/lang/String;
    .local v16, "size":[Ljava/lang/String;
    move-wide/from16 v6, v23

    move-object/from16 v35, v8

    .end local v8    # "location":[Ljava/lang/String;
    .local v35, "location":[Ljava/lang/String;
    move/from16 v8, v31

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/fingerprint/FacolaView$2;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;DF)V

    .line 262
    .local v1, "samsungCallback":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 263
    iget-object v2, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading actual brightness file gives "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v34

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v2, Lcom/android/server/biometrics/fingerprint/FacolaView$3;

    move-object/from16 v3, v22

    const/4 v4, 0x2

    .end local v22    # "actualMaskBrightnessPath":Ljava/lang/String;
    .local v3, "actualMaskBrightnessPath":Ljava/lang/String;
    invoke-direct {v2, v9, v3, v4, v3}, Lcom/android/server/biometrics/fingerprint/FacolaView$3;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    .local v2, "actualMaskObserver":Landroid/os/FileObserver;
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 291
    iget-object v4, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 220
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "samsungCallback":Landroid/os/FileObserver;
    .end local v2    # "actualMaskObserver":Landroid/os/FileObserver;
    .end local v3    # "actualMaskBrightnessPath":Ljava/lang/String;
    .end local v16    # "size":[Ljava/lang/String;
    .end local v23    # "maskBrightness":D
    .end local v25    # "bottomMM":F
    .end local v26    # "areaSizeMM":F
    .end local v27    # "bottomInch":F
    .end local v28    # "areaSizeInch":F
    .end local v29    # "fodPositionArray":[Ljava/lang/String;
    .end local v31    # "gamma":F
    .end local v32    # "areaSizePx":I
    .end local v33    # "bottomPx":I
    .end local v35    # "location":[Ljava/lang/String;
    .restart local v5    # "gamma":F
    .restart local v6    # "size":[Ljava/lang/String;
    .restart local v8    # "location":[Ljava/lang/String;
    .restart local v22    # "actualMaskBrightnessPath":Ljava/lang/String;
    :cond_8
    move/from16 v31, v5

    move-object/from16 v16, v6

    move-object/from16 v35, v8

    move-object/from16 v3, v22

    const/16 v19, 0x0

    .line 296
    .end local v5    # "gamma":F
    .end local v6    # "size":[Ljava/lang/String;
    .end local v8    # "location":[Ljava/lang/String;
    .end local v10    # "brightnessFile":Ljava/lang/String;
    .end local v11    # "fodPositionString":Ljava/lang/String;
    .end local v15    # "maskBrightnessStr":Ljava/lang/String;
    .end local v22    # "actualMaskBrightnessPath":Ljava/lang/String;
    .restart local v16    # "size":[Ljava/lang/String;
    .restart local v31    # "gamma":F
    .restart local v35    # "location":[Ljava/lang/String;
    :goto_b
    const-string v0, "/sys/class/drm/card0-DSI-1/fod_ui_ready"

    .line 297
    .local v0, "xiaomiFodReadyPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 298
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    .line 299
    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    .line 300
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FacolaView$4;

    const/4 v2, 0x2

    invoke-direct {v1, v9, v0, v2, v0}, Lcom/android/server/biometrics/fingerprint/FacolaView$4;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    .local v1, "xiaomiUiReadyCb":Landroid/os/FileObserver;
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 320
    iget-object v2, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->objectsToKeep:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 297
    .end local v1    # "xiaomiUiReadyCb":Landroid/os/FileObserver;
    :cond_9
    const/4 v11, 0x1

    .line 323
    :goto_c
    iget v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const-string/jumbo v2, "persist.sys.phh.has_fod"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 324
    const-string/jumbo v1, "true"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 326
    :cond_a
    const-string v1, "false"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_d
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FacolaView$5;

    move/from16 v2, v31

    .end local v31    # "gamma":F
    .local v2, "gamma":F
    invoke-direct {v1, v9, v2}, Lcom/android/server/biometrics/fingerprint/FacolaView$5;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;F)V

    sput-object v1, Lcom/android/server/lights/LightsService;->backlightChangeListener:Lcom/android/server/lights/LightsService$OnBacklightChange;

    .line 350
    iget-object v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->hbmCtrl1:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-eqz v1, :cond_b

    goto :goto_e

    :cond_b
    move/from16 v11, v19

    :cond_c
    :goto_e
    iput-boolean v11, v9, Lcom/android/server/biometrics/fingerprint/FacolaView;->bypassedBrightness:Z

    .line 351
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FacolaView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FacolaView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/fingerprint/FacolaView;)Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-static {p0, p1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mPaintFingerprint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FacolaView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FacolaView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FacolaView;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic lambda$onDraw$1(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 418
    return-void
.end method

.method static synthetic lambda$onDraw$3(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 441
    return-void
.end method

.method static synthetic lambda$onDraw$4(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 444
    return-void
.end method

.method static synthetic lambda$onDraw$5(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 447
    return-void
.end method

.method static synthetic lambda$show$7(ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 505
    return-void
.end method

.method static synthetic lambda$show$8(ILjava/util/ArrayList;)V
    .locals 4
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHH-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$show$9(ILjava/util/ArrayList;)V
    .locals 4
    .param p0, "retval"    # I
    .param p1, "out"    # Ljava/util/ArrayList;

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHH-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private oppoPress(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->oppoFod:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    :try_start_0
    const-string v0, "0"

    .line 360
    .local v0, "v":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, "1"

    move-object v0, v1

    .line 361
    :cond_1
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->oppoFod:Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "v":Ljava/lang/String;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHH"

    const-string v2, "Failed to notify oppo fp press"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 646
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 649
    .local v1, "b":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 650
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "b":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static samsungCmd(Ljava/lang/String;)V
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;

    .line 657
    const-string v0, "PHH"

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    const-string v2, "/sys/devices/virtual/sec/tsp/cmd"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 661
    const-string v2, "/sys/devices/virtual/sec/tsp/cmd_status"

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "status":Ljava/lang/String;
    const-string v3, "/sys/devices/virtual/sec/tsp/cmd_result"

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    nop

    .end local v1    # "writer":Ljava/io/PrintWriter;
    .end local v2    # "status":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sending command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static samsungHasCmd(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 630
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/sec/tsp/cmd_list"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 633
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 634
    .local v2, "b":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 635
    .local v3, "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    .line 638
    :cond_2
    return v0

    .line 639
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "b":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "value"    # Ljava/lang/String;

    .line 682
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 683
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
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

    const-string v2, "PHH"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 672
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
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

    const-string v2, "PHH"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 5

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 585
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "PHH-Enroll"

    const-string v3, "Hide"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-eqz v1, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mOppoFingerprint:Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 589
    :try_start_0
    invoke-interface {v1, v3}, Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setScreenState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    goto :goto_0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Failed setting oppo screen state"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v1, "0"

    const-string v4, "/sys/kernel/oppo_display/dimlayer_hbm"

    invoke-static {v4, v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iput-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 596
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-eqz v3, :cond_2

    .line 597
    const-string v3, "Removing full green because of hide"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 599
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 601
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungFod:Z

    if-eqz v3, :cond_3

    .line 602
    const-string v3, "fod_enable,0"

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungCmd(Ljava/lang/String;)V

    .line 604
    :cond_3
    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    if-ne v3, v4, :cond_4

    goto :goto_3

    .line 607
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    if-eqz v3, :cond_5

    .line 608
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    :cond_5
    goto :goto_1

    .line 610
    :catch_1
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed calling xiaomi fp extcmd"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/PrintWriter;

    const-string v3, "/sys/devices/virtual/touch/tp_dev/fod_status"

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 619
    .end local v0    # "writer":Ljava/io/PrintWriter;
    goto :goto_2

    .line 617
    :catch_2
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed setting fod status for touchscreen"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "Removed facola"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$D--TV3THAjQP6TRTqopJD3kbTSg;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$D--TV3THAjQP6TRTqopJD3kbTSg;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void

    .line 604
    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic lambda$hide$11$FacolaView()V
    .locals 1

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 625
    return-void
.end method

.method public synthetic lambda$onDraw$0$FacolaView()V
    .locals 3

    .line 402
    const-string v0, "PHH-Enroll"

    const-string v1, "Adding full green because of finger pressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 404
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    return-void
.end method

.method public synthetic lambda$onDraw$2$FacolaView(I)V
    .locals 4
    .param p1, "nitValue"    # I

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    invoke-interface {v0, v1, p1}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->goodixExtendCommand(II)I

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    const/16 v1, 0x600

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;

    invoke-interface {v0, v1, v2, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_2
    :goto_0
    goto :goto_1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHH-Enroll"

    const-string v2, "Failed calling late fp extcmd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public synthetic lambda$onDraw$6$FacolaView()V
    .locals 2

    .line 456
    const-string v0, "PHH-Enroll"

    const-string v1, "Removing full green because of finger released"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreen:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 459
    return-void
.end method

.method public synthetic lambda$show$10$FacolaView()V
    .locals 2

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mUiHidden:Z

    .line 578
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 371
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 373
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

    const-string v1, "PHH-Enroll"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    const-string v2, "Failed calling fp extcmd"

    const-string v3, "1"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 378
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 380
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 381
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 384
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7e4

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 385
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "Fingerprint on display.touched"

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x10a

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 389
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->hbmCtrl1:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 392
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->bypassedBrightness:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "android"

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParamsTouched:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 400
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    if-nez v0, :cond_2

    .line 408
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 409
    const/4 v0, 0x2

    .line 410
    .local v0, "nitValue":I
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;

    invoke-direct {v5, p0, v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$azDkIRJ_hW296cRfLDxl6pVjUxE;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;I)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "nitValue":I
    :cond_2
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/fingerprint/FacolaView;->oppoPress(Z)V

    goto/16 :goto_3

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->hbmCtrl1:Ljava/io/File;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->oppoPress(Z)V

    .line 432
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    if-eqz v3, :cond_9

    .line 433
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->isDown:Z

    .line 435
    :try_start_1
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    const/16 v5, 0xa

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->xiaomiAsynchronous:Z

    if-nez v3, :cond_4

    .line 436
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mXiaomiFingerprint:Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;

    invoke-interface {v3, v5, v0}, Lvendor/xiaomi/hardware/fingerprintextension/V1_0/IXiaomiFingerprint;->extCmd(II)I

    goto :goto_1

    .line 437
    :cond_4
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    if-eqz v3, :cond_5

    .line 438
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprint:Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;

    invoke-interface {v3, v5, v0}, Lvendor/goodix/extend/service/V2_0/IGoodixFPExtendService;->goodixExtendCommand(II)I

    goto :goto_1

    .line 439
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mGoodixFingerprintV2_1:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;

    const/16 v3, 0x601

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$seFg3AT-ugE-LrwUbXirUy4ypmY;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$seFg3AT-ugE-LrwUbXirUy4ypmY;

    invoke-interface {v0, v3, v4, v5}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V

    goto :goto_1

    .line 442
    :cond_6
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    if-eqz v0, :cond_7

    .line 443
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;

    invoke-interface/range {v5 .. v10}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    goto :goto_1

    .line 445
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_8

    .line 446
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    const/16 v3, 0x16

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$ZEWGnD9KRzb4zOTqUGvRIxrFzI8;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$ZEWGnD9KRzb4zOTqUGvRIxrFzI8;

    invoke-interface {v0, v3, v4, v5, v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :cond_8
    :goto_1
    goto :goto_2

    .line 449
    :catch_1
    move-exception v0

    .line 450
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mFullGreenDisplayed:Z

    if-eqz v0, :cond_a

    .line 455
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$xaYRjSQvRyyXNDloQGypUlneIq0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$xaYRjSQvRyyXNDloQGypUlneIq0;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    :cond_a
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

    .line 463
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 468
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 470
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

    .line 471
    .local v5, "newInside":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 472
    const/4 v5, 0x0

    .line 474
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

    const-string v7, "PHH-Enroll"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    if-ne v5, v6, :cond_2

    return v6

    .line 476
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 478
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->invalidate()V

    .line 480
    iget-boolean v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    if-nez v6, :cond_4

    .line 481
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 482
    iget-boolean v6, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v6, :cond_3

    .line 483
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 485
    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    return v0

    .line 489
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x3f666666    # 0.9f

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 491
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    return v2
.end method

.method public show()V
    .locals 9

    .line 499
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "PHH-Enroll"

    const-string v2, "Show"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHidden:Z

    .line 503
    :try_start_0
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    .line 504
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$_8ycB4e0HYP5nNED0B1lqENT1eo;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$_8ycB4e0HYP5nNED0B1lqENT1eo;

    invoke-interface/range {v3 .. v8}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed setting fast fingerprint recognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    .line 511
    const-string v2, "Samsung ask for sensor status"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    const/4 v3, 0x6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$lKI942LF17YnUbv58QWaPG5UwCY;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$lKI942LF17YnUbv58QWaPG5UwCY;

    invoke-interface {v2, v3, v0, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V

    .line 518
    const-string v2, "Samsung ask for sensor brightness value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mSamsungFingerprint3_0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    const/16 v3, 0x20

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$y_l4bBqumuBTG6QyXtl2iB6rp-0;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$y_l4bBqumuBTG6QyXtl2iB6rp-0;

    invoke-interface {v2, v3, v0, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->sehRequest(IILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    goto :goto_1

    .line 526
    :catch_1
    move-exception v2

    .line 527
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Failed setting samsung3.0 fingerprint recognition"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mOppoFingerprint:Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-eqz v2, :cond_1

    .line 532
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v2, v3}, Lvendor/oppo/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setScreenState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 535
    goto :goto_2

    .line 533
    :catch_2
    move-exception v2

    .line 534
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "Failed setting oppo screen state"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mInsideCircle:Z

    .line 538
    const-string v0, "1"

    const-string v2, "/sys/kernel/oppo_display/dimlayer_hbm"

    invoke-static {v2, v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungFod:Z

    if-eqz v2, :cond_2

    .line 540
    const-string v2, "fod_enable,1,1"

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungCmd(Ljava/lang/String;)V

    .line 541
    const-string v2, "fod_enable,1,1,0"

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->samsungCmd(Ljava/lang/String;)V

    .line 543
    :cond_2
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    if-ne v2, v3, :cond_3

    goto :goto_5

    .line 546
    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/sys/devices/virtual/touch/tp_dev/fod_status"

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v2, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 551
    .end local v2    # "writer":Ljava/io/PrintWriter;
    goto :goto_3

    .line 549
    :catch_3
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed setting fod status for touchscreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 554
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 556
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mW:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 557
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mH:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 558
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 560
    const/16 v1, 0x7e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 561
    const-string v1, "Fingerprint on display.untouched"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4010a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 566
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->noDim:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 567
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 568
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_4

    .line 570
    :cond_4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 573
    :goto_4
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "android"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 575
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 576
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FacolaView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$SWsElCxS7nBnqaPT9gHeloJMwH0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$SWsElCxS7nBnqaPT9gHeloJMwH0;-><init>(Lcom/android/server/biometrics/fingerprint/FacolaView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void

    .line 543
    :cond_5
    :goto_5
    return-void
.end method
