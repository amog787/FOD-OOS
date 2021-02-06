.class public Lcom/android/server/wm/OpFingerprintAccelerateInjector;
.super Ljava/lang/Object;
.source "OpFingerprintAccelerateInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpFingerprintAccelerate"

.field private static sIfp:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->sIfp:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static initInstance()V
    .locals 1

    .line 37
    sget-object v0, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->sIfp:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->sIfp:Landroid/hardware/fingerprint/IFingerprintService;

    .line 41
    :cond_0
    return-void
.end method

.method public static isAppSupportsAccelerting(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->initInstance()V

    .line 48
    const/4 v0, 0x1

    .line 50
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/wm/OpFingerprintAccelerateInjector;->sIfp:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-interface {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService;->isAppSupportAccelerate(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OpFingerprintAccelerate"

    const-string v3, "isAppSupportsAccelerting: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public static shouldSkipSleep(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityStack;)Z
    .locals 7
    .param p0, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 63
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x3c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isFingerprintEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 68
    .local v1, "focusStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    .line 70
    .local v2, "focusWindowingMode":I
    const/4 v4, 0x0

    .line 71
    .local v4, "otherStack":Lcom/android/server/wm/ActivityStack;
    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    .line 72
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    goto :goto_1

    .line 74
    :cond_2
    if-ne v2, v5, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 78
    :cond_3
    :goto_1
    if-ne v4, p1, :cond_4

    iget-object v5, p1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 79
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSleepActivities return false for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " focusStack="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpFingerprintAccelerate"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v0

    .line 85
    .end local v2    # "focusWindowingMode":I
    .end local v4    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    return v3

    .line 65
    .end local v1    # "focusStack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    :goto_2
    return v3
.end method
