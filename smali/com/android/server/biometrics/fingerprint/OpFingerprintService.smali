.class public Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "OpFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z

.field private static final DISABLE_FP_LONGPRESS:I = 0x4

.field private static final ENABLE_FP_LONGPRESS:I = 0x3

.field private static final FINISH_FP_ENROLL:I = 0xa

.field private static final RESUME_FP_AUTHENTICATE:I = 0xb

.field private static final RESUME_FP_ENROLL:I = 0x8

.field private static final SUSPEND_FP_AUTHENTICATE:I = 0xc

.field private static final SUSPEND_FP_ENROLL:I = 0x9

.field protected static final TAG:Ljava/lang/String; = "OpFingerprintService"

.field public static mIsColorCalibrationDisableByFingerPrint:Z


# instance fields
.field private final ATTACK_DEFENDING_DURATION:J

.field protected final DOUBLE_ACCOUNT_UID:I

.field private final FAIL_ATTEMPT_COUNTING_DURATION:J

.field private final FAIL_ATTEMPT_MAX_AMOUNT:J

.field protected final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field private final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field private final KEY_COLOR_CORRECTION:Ljava/lang/String;

.field private mAttackDefending:Z

.field private mBlockX:I

.field private mBlockXEnd:I

.field private mBlockY:I

.field private mBlockYEnd:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentParam:I

.field private mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

.field private mExtDaemonDeathRecipient:Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

.field private mFailedAttemptsForAttack:I

.field private mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

.field protected mFingerprintSensorMdmValue:Ljava/lang/String;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mTempDisableColorCorrection:Z

.field private mTimeStampRaisingCriteria:J

.field private mTimeStampStartCounting:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->DEBUG:Z

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mIsColorCalibrationDisableByFingerPrint:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 82
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->DOUBLE_ACCOUNT_UID:I

    .line 96
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    .line 99
    new-array v1, v0, [I

    const/16 v2, 0x3c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    .line 113
    iput v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockX:I

    .line 114
    iput v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockY:I

    .line 115
    iput v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockXEnd:I

    .line 116
    iput v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockYEnd:I

    .line 120
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentParam:I

    .line 123
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->FAIL_ATTEMPT_COUNTING_DURATION:J

    .line 124
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->FAIL_ATTEMPT_MAX_AMOUNT:J

    .line 125
    const-wide/32 v1, 0x1b7740

    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->ATTACK_DEFENDING_DURATION:J

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampStartCounting:J

    .line 128
    iput-wide v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampRaisingCriteria:J

    .line 129
    iput-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAttackDefending:Z

    .line 132
    const-string v1, "fps_color_correction"

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->KEY_COLOR_CORRECTION:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTempDisableColorCorrection:Z

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 141
    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintSensorMdmValue:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemonDeathRecipient:Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

    .line 150
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040231

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 155
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5060187

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockX:I

    .line 168
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5060188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockY:I

    .line 169
    iget v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockX:I

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x506018c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockXEnd:I

    .line 170
    iget v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockY:I

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x506018b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockYEnd:I

    .line 173
    iget-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v4, :cond_1

    .line 174
    new-instance v4, Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-direct {v4, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    .line 176
    new-instance v4, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v4}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 182
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 185
    .local v4, "curUserId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_2

    .line 186
    return-void

    .line 190
    :cond_2
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v0, :cond_3

    move v5, v0

    goto :goto_0

    :cond_3
    move v5, v3

    .line 192
    .local v5, "tmpValue":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_daltonizer_enabled"

    invoke-static {v6, v7, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v0, :cond_4

    move v6, v0

    goto :goto_1

    :cond_4
    move v6, v3

    .line 195
    .local v6, "curValue":Z
    :goto_1
    sget-boolean v8, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->DEBUG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current color correction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", temporary color correction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OpFingerprintService"

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_5
    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    .line 198
    iget-object v8, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v7, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 204
    :cond_6
    return-void
.end method

.method private allowUseCustomFingerprint(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 377
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 378
    return v1

    .line 381
    :cond_0
    new-array v0, v1, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    return v1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    return v1

    .line 388
    :cond_2
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not allowUseCustomFingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3
    return v2
.end method

.method private checkDefendRemaining()V
    .locals 8

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 558
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampRaisingCriteria:J

    sub-long v2, v0, v2

    .line 559
    .local v2, "difference":J
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v5, "OpFingerprintService"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefendRemaining: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    const-wide/32 v6, 0x1b7740

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 562
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string v4, "cancel defending"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->setParam(I)V

    .line 564
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampRaisingCriteria:J

    .line 565
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAttackDefending:Z

    .line 567
    :cond_2
    return-void
.end method

.method private forceSendEvent(II)V
    .locals 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 453
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 454
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 456
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, v3, v3}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onFingerprintEventCallback(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    goto :goto_1

    .line 457
    :catch_0
    move-exception v2

    .line 459
    .local v2, "re":Landroid/os/RemoteException;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 454
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private getCallbacks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation

    .line 497
    const-class v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string/jumbo v1, "mClientActiveCallbacks"

    invoke-static {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 682
    const-string v0, " field "

    const-string v1, "OpFingerprintService"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    .local v3, "field":Ljava/lang/reflect/Field;
    nop

    .line 688
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 691
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 692
    :catch_0
    move-exception v4

    .line 693
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue IllegalAccess "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    return-object v2

    .line 683
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v3

    .line 684
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValue NoSuchField "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-object v2
.end method

.method private handleFailAttemptForAttack()V
    .locals 14

    .line 584
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    .line 586
    .local v0, "currentFailAttempt":I
    const-string v1, "OpFingerprintService"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampStartCounting:J

    goto/16 :goto_3

    .line 589
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 590
    .local v3, "currentTime":J
    iget-wide v5, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampStartCounting:J

    sub-long v5, v3, v5

    .line 591
    .local v5, "difference":J
    add-int/lit8 v7, v0, 0x1

    int-to-long v7, v7

    const-wide/16 v9, 0xa

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-ltz v7, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 592
    .local v7, "overAmount":Z
    :goto_0
    const-wide/32 v9, 0xea60

    cmp-long v11, v5, v9

    if-gtz v11, :cond_2

    if-eqz v7, :cond_2

    move v11, v2

    goto :goto_1

    :cond_2
    move v11, v8

    .line 593
    .local v11, "underAttack":Z
    :goto_1
    cmp-long v9, v5, v9

    if-lez v9, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v8

    .line 595
    .local v9, "overTime":Z
    :goto_2
    sget-boolean v10, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_4

    .line 596
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleFailAttemptForAttack: difference="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", overAmount="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", underAttack="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", overTime="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    if-eqz v11, :cond_6

    .line 603
    sget-boolean v10, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "under attack, raise criteria now"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAttackDefending:Z

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampRaisingCriteria:J

    .line 606
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampStartCounting:J

    .line 607
    iput v8, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    .line 609
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "lock_unlock_failed"

    const-string v10, "finger"

    const-string v12, "2"

    invoke-static {v1, v8, v10, v12}, Lcom/oneplus/onlineconfig/OpMdmLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->setParam(I)V

    .line 613
    return-void

    .line 616
    :cond_6
    if-eqz v9, :cond_8

    .line 617
    sget-boolean v10, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "over time re-condisering if under attack"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTimeStampStartCounting:J

    .line 619
    iput v8, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    .line 622
    .end local v3    # "currentTime":J
    .end local v5    # "difference":J
    .end local v7    # "overAmount":Z
    .end local v9    # "overTime":Z
    .end local v11    # "underAttack":Z
    :cond_8
    :goto_3
    iget v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    .line 623
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_9

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFailAttemptForAttack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFailedAttemptsForAttack:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_9
    return-void
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setParam(I)V
    .locals 4
    .param p1, "level"    # I

    .line 364
    const-string v0, "OpFingerprintService"

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v1

    .line 365
    .local v1, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParam , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-interface {v1, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->setParam(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getStatus failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 520
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->checkUseBiometricPermission()V

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->allowUseCustomFingerprint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method protected checkAppOps(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method protected checkUseBiometricPermission()V
    .locals 0

    .line 228
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 644
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTempDisableColorCorrection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mTempDisableColorCorrection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentUserId:I

    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 652
    .local v0, "curValue":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentUserId:I

    const-string v5, "fps_color_correction"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v3, v1

    :cond_1
    move v1, v3

    .line 654
    .local v1, "tmpValue":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentColorCorrection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TempoaryColorCorrection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    .end local v0    # "curValue":Z
    .end local v1    # "tmpValue":Z
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentClient(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->printClient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getAppUnsupportAccelerateList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getAppUnsupportAccelerateList()Ljava/util/ArrayList;

    move-result-object v0

    .line 668
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "UnsupportAccelerateList:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 670
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .end local v2    # "app":Ljava/lang/String;
    goto :goto_1

    .line 676
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method protected enterFingerprintMode(Z)V
    .locals 4
    .param p1, "enter"    # Z

    .line 701
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    if-eqz v0, :cond_1

    .line 702
    const/4 v1, 0x0

    const-string v2, "FingerPrintMode"

    if-eqz p1, :cond_0

    .line 703
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 705
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    .line 708
    :cond_1
    const-string v0, "OpFingerprintService"

    const-string v1, "OIMCService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void
.end method

.method getAppUnsupportAccelerateList()Ljava/util/List;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getAppUnsupportAccelerateList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getAuthPackageInternal()Ljava/lang/String;
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 396
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 400
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAuthenticatorId(I)J
    .locals 4
    .param p1, "callingUserId"    # I

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 304
    .local v0, "userId":I
    const-wide/16 v1, 0x0

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 304
    const/16 v2, 0x3e7

    if-ne p1, v2, :cond_0

    .line 305
    const-string v2, "OpFingerprintService"

    const-string v3, "getAuthenticatorId double"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 309
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .locals 1

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCancelErrorCode()I
    .locals 1

    .line 738
    const/4 v0, 0x5

    return v0
.end method

.method protected getCancelResetErrorCode()I
    .locals 1

    .line 734
    const/16 v0, 0x65

    return v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .locals 1

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 4

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-nez v0, :cond_2

    .line 472
    const-string v0, "OpFingerprintService"

    const-string/jumbo v1, "mExtDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    invoke-static {}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getService()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    goto :goto_0

    .line 477
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "OpFingerprintService"

    const-string v2, "Failed to get fingerprint ext interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 479
    nop

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 481
    const-string v0, "OpFingerprintService"

    const-string v2, "fingerprint ext HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    monitor-exit p0

    return-object v1

    .line 486
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemonDeathRecipient:Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;-><init>(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemonDeathRecipient:Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemonDeathRecipient:Lcom/android/server/biometrics/fingerprint/OpFingerprintService$ExtDaemonDeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getHalDeviceId()J
    .locals 2

    .line 242
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .locals 1

    .line 247
    const-string v0, ""

    return-object v0
.end method

.method protected getLockoutMode()I
    .locals 1

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .locals 1

    .line 252
    const-string v0, ""

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .locals 1

    .line 232
    const-string v0, ""

    return-object v0
.end method

.method public getSensorType()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintSensorMdmValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 744
    const-string/jumbo v0, "persist.vendor.oem.fp.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintSensorMdmValue:Ljava/lang/String;

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintSensorMdmValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 353
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getStatus()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OpFingerprintService"

    const-string v3, "getStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 281
    const-string v0, "OpFingerprintService"

    return-object v0
.end method

.method protected handleAcquired(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 428
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 430
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->forceSendEvent(II)V

    .line 435
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    goto :goto_0

    .line 438
    :cond_1
    if-nez v0, :cond_2

    .line 439
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->forceSendEvent(II)V

    .line 448
    :cond_2
    :goto_0
    return-void
.end method

.method protected handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p2, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 509
    const-string v0, "OpFingerprintService"

    const-string v1, "handleAuthenticated 03 to return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 514
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 515
    return-void
.end method

.method protected handleError(JII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 289
    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 295
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public isAppSupportAccelerate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->isAppSupportAccelerate(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isEnrolling()Z
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/EnrollClient;

    return v0
.end method

.method protected opHandleFailedAttempt()I
    .locals 3

    .line 572
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x6a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mAttackDefending:Z

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleFailAttemptForAttack()V

    goto :goto_0

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->checkDefendRemaining()V

    .line 580
    :cond_1
    :goto_0
    return v2
.end method

.method protected opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 2
    .param p1, "newClient"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 532
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->updateStatus(I)I

    goto :goto_0

    .line 535
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->updateStatus(I)I

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->getParam(Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, "param":I
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentParam:I

    if-eq v1, v0, :cond_1

    .line 541
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mCurrentParam:I

    .line 542
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->setParam(I)V

    .line 546
    .end local v0    # "param":I
    :cond_1
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .locals 0
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 466
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 467
    return-void
.end method

.method protected resetExtDaemon()V
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetExtDaemon= caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    .line 754
    return-void
.end method

.method protected resolveOnlineConfig()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-virtual {v0}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;->resolveOnlineConfig()V

    .line 630
    return-void
.end method

.method public serviceDied(J)V
    .locals 0
    .param p1, "cookie"    # J

    .line 635
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 637
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->resetExtDaemon()V

    .line 639
    return-void
.end method

.method protected shouldBlockTouch(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 405
    const/4 v0, 0x0

    .line 407
    .local v0, "block":Z
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 408
    return v2

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.oneplus.applocker"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    return v2

    .line 414
    :cond_1
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockX:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockXEnd:I

    if-gt p1, v1, :cond_3

    .line 415
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockY:I

    if-lt p2, v1, :cond_3

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->mBlockYEnd:I

    if-gt p1, v1, :cond_3

    .line 416
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block Touch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpFingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 420
    :cond_3
    return v2
.end method

.method protected statsModality()I
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 257
    return-void
.end method

.method public updateStatus(I)I
    .locals 4
    .param p1, "status"    # I

    .line 316
    const-string v0, "OpFingerprintService"

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_2

    .line 317
    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/EnrollClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/EnrollClient;->suspend()V

    goto :goto_0

    .line 319
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/EnrollClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/EnrollClient;->resume()V

    goto :goto_0

    .line 321
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    .line 323
    const/16 p1, 0x8

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_4

    .line 327
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->suspend()V

    goto :goto_0

    .line 329
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->resume()V

    .line 337
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v1

    .line 338
    .local v1, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v1, :cond_5

    .line 340
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatus , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-interface {v1, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->updateStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "updateStatus failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v0, 0x0

    return v0
.end method
