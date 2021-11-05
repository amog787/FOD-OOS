.class public abstract Lcom/android/server/biometrics/OpClientMonitor;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "OpClientMonitor.java"


# static fields
.field public static final DEBUG:Z

.field private static final FORCE_SHOW:Ljava/lang/String; = "forceShow-keyguard"

.field private static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private static final sIgnoreVendorList:[I


# instance fields
.field private final FINGERPRINT_ACQUIRED_VENDOR_DUPLICATED_FINGERPRINT:I

.field private final FINGERPRINT_ACQUIRED_VENDOR_TOO_SIMILAR:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

.field protected final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field private mEnrollRemain:I

.field private mPm:Landroid/os/PowerManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/biometrics/OpClientMonitor;->DEBUG:Z

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x65

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/biometrics/OpClientMonitor;->sIgnoreVendorList:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I

    .line 94
    invoke-direct/range {p0 .. p12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3c

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

    .line 70
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

    .line 76
    iput v2, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRED_VENDOR_DUPLICATED_FINGERPRINT:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRED_VENDOR_TOO_SIMILAR:I

    .line 97
    nop

    .line 98
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mPm:Landroid/os/PowerManager;

    .line 103
    return-void
.end method

.method public static addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/onlineconfig/OpMdmLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private shouldVibrate()Z
    .locals 9

    .line 370
    const-string v0, " method "

    const-string v1, "BiometricStats"

    const-class v2, Lcom/android/server/biometrics/EnrollClient;

    .line 371
    .local v2, "c":Ljava/lang/Class;
    const-string/jumbo v3, "shouldVibrate"

    .line 374
    .local v3, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 378
    .local v5, "method":Ljava/lang/reflect/Method;
    nop

    .line 380
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 383
    :try_start_1
    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 386
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "methodInvokeVoid InvocationTarget Class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    .line 385
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "methodInvokeVoid IllegalAccess "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 390
    :goto_0
    return v4

    .line 375
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v5

    .line 376
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "methodInvokeVoid NoSuchMethod "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v4
.end method

.method protected static shouldVibrate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 324
    .local v0, "enabled":I
    if-ne v0, v2, :cond_0

    .line 325
    return v2

    .line 327
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private vibrateForIntensity(Landroid/os/Vibrator;[J)V
    .locals 5
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .param p2, "pattern"    # [J

    .line 360
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_on_touch_intensity"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 364
    .local v0, "intensity":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    int-to-long v3, v1

    const/4 v1, 0x0

    aput-wide v3, p2, v1

    .line 365
    invoke-virtual {p1, p2, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 366
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 289
    const-string v0, "fp client destroy"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/server/biometrics/OpClientMonitor;->sIgnoreVendorList:[I

    return-object v0

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v0

    return-object v0
.end method

.method protected isInteractive()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method protected notifyFodAcquired(II)V
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 503
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAcquired error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodAuthenticatedFailed()V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticatedFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAuthenticatedFailed error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodAuthenticatedSuccess()V
    .locals 4

    .line 453
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_6

    .line 455
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "ownerString":Ljava/lang/String;
    sget-object v1, Lcom/android/server/biometrics/OpClientMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-nez v1, :cond_0

    .line 457
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    sput-object v1, Lcom/android/server/biometrics/OpClientMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 461
    :cond_0
    sget-object v1, Lcom/android/server/biometrics/OpClientMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz v1, :cond_4

    .line 462
    sget-boolean v1, Lcom/android/server/biometrics/OpClientMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthenticationClient authenticated and notify display"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "forceShow-keyguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    sget-object v1, Lcom/android/server/biometrics/OpClientMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setExitFingerPrintModeWay(Z)V

    goto :goto_1

    .line 466
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/OpClientMonitor;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setExitFingerPrintModeWay(Z)V

    .line 474
    :cond_4
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticatedSuccess()V

    goto :goto_2

    .line 478
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAuthenticatedSuccess fail, because the StatusBarService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_2
    goto :goto_3

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "notifyFodAuthenticatedSuccess error occur"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v0    # "ownerString":Ljava/lang/String;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_3
    return-void
.end method

.method protected notifyFodEnrollResult(I)V
    .locals 3
    .param p1, "remaining"    # I

    .line 515
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintEnrollResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFingerprintEnrollResult error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 527
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFingerprintError error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodHide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;Z)V

    .line 434
    return-void
.end method

.method protected notifyFodHide(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "suspend"    # Z

    .line 437
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 440
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->packFodBundle(Landroid/os/Bundle;)V

    .line 441
    const-string/jumbo v1, "key_suspend"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 442
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStats"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected notifyFodShow(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;Z)V

    .line 400
    return-void
.end method

.method protected notifyFodShow(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "resume"    # Z

    .line 417
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 419
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->packFodBundle(Landroid/os/Bundle;)V

    .line 421
    const-string/jumbo v1, "key_resume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 422
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStats"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected notifySurfaceFlinger()V
    .locals 7

    .line 296
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "notifySurfaceFlinger"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 299
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 301
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    const/4 v3, 0x1

    .line 303
    .local v3, "showUpdates":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/16 v4, 0x8a3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 305
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 306
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "showUpdates":I
    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    goto :goto_1

    .line 307
    :cond_0
    const-string v2, "close Propeties flinger is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    goto :goto_2

    .line 310
    .local v2, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v3, "read flinger 1015 is fail"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onAcquired(II)Z
    .locals 12
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 162
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v1, :cond_1

    if-ne p1, v5, :cond_1

    .line 164
    if-eq p2, v4, :cond_0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 166
    :cond_0
    const/16 v1, 0x3fc

    const/16 v6, 0x32

    invoke-virtual {p0, v1, v6, v2}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateErrorWithScene(III)Z

    .line 170
    :cond_1
    instance-of v1, p0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodAcquired(II)V

    .line 174
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    .local v1, "context":Landroid/content/Context;
    iget-boolean v6, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v6, :cond_c

    .line 184
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x5

    const-string v9, "BiometricStats"

    const-string/jumbo v10, "lock_unlock_failed"

    if-eqz v6, :cond_6

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acquiredInfo = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v6, "1"

    if-ne p1, v0, :cond_3

    .line 187
    const-string v0, "ac_partial"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    if-ne p1, v4, :cond_4

    .line 189
    const-string v0, "ac_insufficient"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_4
    if-ne p1, v2, :cond_5

    .line 191
    const-string v0, "imager_dirty"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_5
    if-ne p1, v8, :cond_6

    .line 193
    const-string v0, "ac_fast"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_6
    :goto_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    if-eq p2, v8, :cond_7

    if-ne p2, v5, :cond_c

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 203
    const-string v2, "2"

    const-string v4, "finger"

    if-eq p2, v0, :cond_a

    const-string/jumbo v0, "lock_unlock_success"

    if-eq p2, v8, :cond_9

    if-eq p2, v5, :cond_8

    .line 218
    const-string v0, "incorrect situation"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    :cond_8
    const-string v2, "3"

    invoke-static {v1, v0, v4, v2}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    goto :goto_1

    .line 210
    :cond_9
    invoke-static {v1, v0, v4, v2}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    goto :goto_1

    .line 206
    :cond_a
    invoke-static {v1, v10, v4, v2}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive fake finger info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v3

    .line 227
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodAcquired(II)V

    .line 229
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 1
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 156
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onError(JII)Z
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 236
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodError(I)V

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method protected packFodBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .line 403
    if-nez p1, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_fingerprint_package_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getCookie()I

    move-result v0

    const-string/jumbo v1, "key_cookie"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    instance-of v0, p0, Lcom/android/server/biometrics/EnrollClient;

    const-string/jumbo v1, "key_enroll"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    return-void
.end method

.method public resume()V
    .locals 2

    .line 277
    const-string v0, "fp client resume"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;Z)V

    .line 279
    return-void
.end method

.method protected sendEnrollResult(I)V
    .locals 3
    .param p1, "remaining"    # I

    .line 120
    iget v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    if-eq v0, p1, :cond_1

    .line 121
    iput p1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/16 v0, 0x3ff

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccessWithScene(II)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccess()V

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "same enroll remaining"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodEnrollResult(I)V

    .line 136
    return-void
.end method

.method public start()I
    .locals 2

    .line 247
    const-string v0, "fp client start"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;)V

    .line 251
    instance-of v0, p0, Lcom/android/server/biometrics/EnrollClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    iput v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 254
    :cond_0
    return v1
.end method

.method public stop(Z)I
    .locals 1
    .param p1, "initiatedByClient"    # Z

    .line 261
    const-string v0, "fp client stop"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public suspend()V
    .locals 2

    .line 271
    const-string v0, "fp client suspend"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;Z)V

    .line 273
    return-void
.end method

.method public final vibrateErrorWithScene(III)Z
    .locals 8
    .param p1, "sceneId"    # I
    .param p2, "gap"    # I
    .param p3, "times"    # I

    .line 349
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 350
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v7, 0x0

    .line 351
    .local v7, "vibrated":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, v0

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v7, 0x1

    .line 355
    :cond_0
    return v7
.end method

.method public final vibrateSuccessWithScene(II)V
    .locals 10
    .param p1, "sceneId"    # I
    .param p2, "type"    # I

    .line 333
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 334
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 335
    .local v2, "INTENSITY":[I
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_on_touch_intensity"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 336
    .local v3, "intensityIndex":I
    aget v4, v2, v3

    .line 338
    .local v4, "intensity":I
    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v6

    .line 339
    .local v6, "duration":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 340
    new-array v1, v1, [J

    int-to-long v8, v4

    aput-wide v8, v1, v5

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v1, v5

    const/4 v5, 0x2

    int-to-long v8, v6

    aput-wide v8, v1, v5

    .line 341
    .local v1, "pattern":[J
    invoke-virtual {v0, v1, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 342
    return-void

    .line 345
    .end local v1    # "pattern":[J
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccess()V

    .line 346
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method
