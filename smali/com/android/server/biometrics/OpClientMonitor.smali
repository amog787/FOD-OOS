.class public abstract Lcom/android/server/biometrics/OpClientMonitor;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "OpClientMonitor.java"


# static fields
.field public static final DEBUG:Z

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

    .line 51
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/biometrics/OpClientMonitor;->DEBUG:Z

    .line 56
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

    .line 82
    invoke-direct/range {p0 .. p12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

    .line 70
    iput v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRED_VENDOR_DUPLICATED_FINGERPRINT:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->FINGERPRINT_ACQUIRED_VENDOR_TOO_SIMILAR:I

    .line 85
    nop

    .line 86
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mPm:Landroid/os/PowerManager;

    .line 91
    return-void
.end method

.method public static addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 103
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/onlineconfig/OpMdmLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private shouldVibrate()Z
    .locals 9

    .line 358
    const-string v0, " method "

    const-string v1, "BiometricStats"

    const-class v2, Lcom/android/server/biometrics/EnrollClient;

    .line 359
    .local v2, "c":Ljava/lang/Class;
    const-string/jumbo v3, "shouldVibrate"

    .line 362
    .local v3, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 366
    .local v5, "method":Ljava/lang/reflect/Method;
    nop

    .line 368
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 371
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

    .line 374
    :catch_0
    move-exception v6

    .line 375
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

    .line 372
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    .line 373
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

    .line 376
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 378
    :goto_0
    return v4

    .line 363
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v5

    .line 364
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

    .line 365
    return v4
.end method

.method protected static shouldVibrate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 312
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    .line 313
    return v1

    .line 315
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private vibrateForIntensity(Landroid/os/Vibrator;[J)V
    .locals 5
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .param p2, "pattern"    # [J

    .line 348
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "vibrate_on_touch_intensity"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 352
    .local v0, "intensity":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    int-to-long v3, v1

    const/4 v1, 0x0

    aput-wide v3, p2, v1

    .line 353
    invoke-virtual {p1, p2, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 354
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 277
    const-string v0, "fp client destroy"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/server/biometrics/OpClientMonitor;->sIgnoreVendorList:[I

    return-object v0

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v0

    return-object v0
.end method

.method protected isInteractive()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method protected notifyFodAcquired(II)V
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 472
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAcquired error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodAuthenticatedFailed()V
    .locals 3

    .line 460
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticatedFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAuthenticatedFailed error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodAuthenticatedSuccess()V
    .locals 3

    .line 441
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticatedSuccess()V

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyFodAuthenticatedSuccess fail, because the StatusBarService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    goto :goto_1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyFodAuthenticatedSuccess error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method protected notifyFodEnrollResult(I)V
    .locals 3
    .param p1, "remaining"    # I

    .line 484
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintEnrollResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFingerprintEnrollResult error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 496
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onFingerprintError error occur"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyFodHide(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;Z)V

    .line 422
    return-void
.end method

.method protected notifyFodHide(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "suspend"    # Z

    .line 425
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->packFodBundle(Landroid/os/Bundle;)V

    .line 429
    const-string/jumbo v1, "key_suspend"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStats"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected notifyFodShow(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;Z)V

    .line 388
    return-void
.end method

.method protected notifyFodShow(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "resume"    # Z

    .line 405
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->packFodBundle(Landroid/os/Bundle;)V

    .line 409
    const-string/jumbo v1, "key_resume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    iget-object v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStats"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method protected notifySurfaceFlinger()V
    .locals 7

    .line 284
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "notifySurfaceFlinger"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 287
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 289
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    const/4 v3, 0x1

    .line 291
    .local v3, "showUpdates":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/16 v4, 0x8a3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v4, v2, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 293
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 294
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "showUpdates":I
    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    goto :goto_1

    .line 295
    :cond_0
    const-string v2, "close Propeties flinger is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    goto :goto_2

    .line 298
    .local v2, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v3, "read flinger 1015 is fail"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onAcquired(II)Z
    .locals 12
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 150
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x7a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v1, :cond_1

    if-ne p1, v5, :cond_1

    .line 152
    if-eq p2, v4, :cond_0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 154
    :cond_0
    const/16 v1, 0x3fc

    const/16 v6, 0x32

    invoke-virtual {p0, v1, v6, v3}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateErrorWithScene(III)Z

    .line 158
    :cond_1
    instance-of v1, p0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v1, :cond_2

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodAcquired(II)V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 169
    .local v1, "context":Landroid/content/Context;
    iget-boolean v6, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v6, :cond_c

    .line 172
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.systemui"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x5

    const-string v9, "BiometricStats"

    const-string/jumbo v10, "lock_unlock_failed"

    if-eqz v6, :cond_6

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acquiredInfo = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v6, "1"

    if-ne p1, v0, :cond_3

    .line 175
    const-string v0, "ac_partial"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    if-ne p1, v4, :cond_4

    .line 177
    const-string v0, "ac_insufficient"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    if-ne p1, v3, :cond_5

    .line 179
    const-string v0, "imager_dirty"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_5
    if-ne p1, v8, :cond_6

    .line 181
    const-string v0, "ac_fast"

    invoke-static {v1, v10, v0, v6}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    :goto_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    if-eq p2, v8, :cond_7

    if-ne p2, v5, :cond_c

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 191
    const-string v3, "2"

    const-string v4, "finger"

    if-eq p2, v0, :cond_a

    const-string/jumbo v0, "lock_unlock_success"

    if-eq p2, v8, :cond_9

    if-eq p2, v5, :cond_8

    .line 206
    const-string v0, "incorrect situation"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_8
    const-string v3, "3"

    invoke-static {v1, v0, v4, v3}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    goto :goto_1

    .line 198
    :cond_9
    invoke-static {v1, v0, v4, v3}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    goto :goto_1

    .line 194
    :cond_a
    invoke-static {v1, v10, v4, v3}, Lcom/android/server/biometrics/OpClientMonitor;->addMdmLogData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive fake finger info: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v2

    .line 215
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodAcquired(II)V

    .line 217
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 3
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

    .line 131
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v0, :cond_1

    .line 133
    if-eqz p2, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricStats"

    const-string v2, "Failed to notify Authenticated:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onError(JII)Z
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 224
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodError(I)V

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method protected packFodBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .line 391
    if-nez p1, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_fingerprint_package_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getCookie()I

    move-result v0

    const-string/jumbo v1, "key_cookie"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    instance-of v0, p0, Lcom/android/server/biometrics/EnrollClient;

    const-string/jumbo v1, "key_enroll"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    return-void
.end method

.method public resume()V
    .locals 2

    .line 265
    const-string v0, "fp client resume"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method protected sendEnrollResult(I)V
    .locals 3
    .param p1, "remaining"    # I

    .line 108
    iget v0, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    if-eq v0, p1, :cond_1

    .line 109
    iput p1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x7a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/16 v0, 0x3ff

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccessWithScene(II)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccess()V

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "same enroll remaining"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodEnrollResult(I)V

    .line 124
    return-void
.end method

.method public start()I
    .locals 2

    .line 235
    const-string v0, "fp client start"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodShow(Ljava/lang/String;)V

    .line 239
    instance-of v0, p0, Lcom/android/server/biometrics/EnrollClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    iput v1, p0, Lcom/android/server/biometrics/OpClientMonitor;->mEnrollRemain:I

    .line 242
    :cond_0
    return v1
.end method

.method public stop(Z)I
    .locals 1
    .param p1, "initiatedByClient"    # Z

    .line 249
    const-string v0, "fp client stop"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public suspend()V
    .locals 2

    .line 259
    const-string v0, "fp client suspend"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/OpClientMonitor;->notifyFodHide(Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public final vibrateErrorWithScene(III)Z
    .locals 8
    .param p1, "sceneId"    # I
    .param p2, "gap"    # I
    .param p3, "times"    # I

    .line 337
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 338
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v7, 0x0

    .line 339
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

    .line 340
    const/4 v7, 0x1

    .line 343
    :cond_0
    return v7
.end method

.method public final vibrateSuccessWithScene(II)V
    .locals 10
    .param p1, "sceneId"    # I
    .param p2, "type"    # I

    .line 321
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 322
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 323
    .local v2, "INTENSITY":[I
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "vibrate_on_touch_intensity"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 324
    .local v3, "intensityIndex":I
    aget v5, v2, v3

    .line 326
    .local v5, "intensity":I
    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v6

    .line 327
    .local v6, "duration":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 328
    new-array v1, v1, [J

    int-to-long v8, v5

    aput-wide v8, v1, v4

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v1, v4

    const/4 v4, 0x2

    int-to-long v8, v6

    aput-wide v8, v1, v4

    .line 329
    .local v1, "pattern":[J
    invoke-virtual {v0, v1, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 330
    return-void

    .line 333
    .end local v1    # "pattern":[J
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/OpClientMonitor;->vibrateSuccess()V

    .line 334
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method
