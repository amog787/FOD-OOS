.class public abstract Lcom/android/server/location/IContextHubWrapper;
.super Ljava/lang/Object;
.source "IContextHubWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;,
        Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IContextHubWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeConnectTo1_0()Lcom/android/server/location/IContextHubWrapper;
    .locals 4

    .line 39
    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    .line 41
    .local v1, "proxy":Landroid/hardware/contexthub/V1_0/IContexthub;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 46
    :goto_0
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 42
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 43
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 48
    :goto_1
    const/4 v0, 0x0

    .line 49
    .local v0, "wrapper":Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;
    if-eqz v1, :cond_0

    .line 50
    new-instance v2, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;

    invoke-direct {v2, v1}, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_0;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    move-object v0, v2

    .line 53
    :cond_0
    return-object v0
.end method

.method public static maybeConnectTo1_1()Lcom/android/server/location/IContextHubWrapper;
    .locals 4

    .line 63
    const-string v0, "IContextHubWrapper"

    const/4 v1, 0x0

    .line 65
    .local v1, "proxy":Landroid/hardware/contexthub/V1_1/IContexthub;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/contexthub/V1_1/IContexthub;->getService(Z)Landroid/hardware/contexthub/V1_1/IContexthub;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 70
    :goto_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Context Hub HAL service not found"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 67
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException while attaching to Context Hub HAL proxy"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 72
    :goto_1
    const/4 v0, 0x0

    .line 73
    .local v0, "wrapper":Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;
    if-eqz v1, :cond_0

    .line 74
    new-instance v2, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;

    invoke-direct {v2, v1}, Lcom/android/server/location/IContextHubWrapper$ContextHubWrapperV1_1;-><init>(Landroid/hardware/contexthub/V1_1/IContexthub;)V

    move-object v0, v2

    .line 77
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getHub()Landroid/hardware/contexthub/V1_0/IContexthub;
.end method

.method public abstract onSettingChanged(BB)V
.end method

.method public abstract supportsSettingNotifications()Z
.end method
