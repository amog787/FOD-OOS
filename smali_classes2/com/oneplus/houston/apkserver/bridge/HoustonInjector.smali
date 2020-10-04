.class public Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;
.super Ljava/lang/Object;
.source "HoustonInjector.java"


# static fields
.field public static mAms:Lcom/android/server/am/ActivityManagerService;

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoAcquireOrRelease(Z)V
    .locals 1
    .param p0, "isAwake"    # Z

    .line 55
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->autoAcquireOrRelease(Z)V

    .line 56
    return-void
.end method

.method public static initialize(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    sput-object p0, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 25
    sput-object p1, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mContext:Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->publish(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static moveForeground(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 44
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->moveForeground(I)V

    .line 45
    return-void
.end method

.method public static preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "bindApplicationDelayMs"    # I

    .line 35
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    .line 37
    return-void
.end method

.method public static removeProcess(ILjava/lang/String;)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->remove(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public static reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "bindApplicationDelayMs"    # I
    .param p3, "launchTime"    # I
    .param p4, "component"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public static setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 63
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 64
    return-void
.end method

.method public static systemReady()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->systemReady()V

    .line 31
    return-void
.end method

.method public static updateScreenState(Z)V
    .locals 1
    .param p0, "isScreenOn"    # Z

    .line 59
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->updateScreenState(Z)V

    .line 60
    return-void
.end method
