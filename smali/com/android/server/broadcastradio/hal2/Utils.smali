.class Lcom/android/server/broadcastradio/hal2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;,
        Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.utils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBand(I)Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 1
    .param p0, "freq"    # I

    .line 35
    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 36
    :cond_0
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 37
    :cond_1
    const/16 v0, 0x6a9

    if-ge p0, v0, :cond_2

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 38
    :cond_2
    const/16 v0, 0x7530

    if-ge p0, v0, :cond_3

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 39
    :cond_3
    const v0, 0xea60

    if-ge p0, v0, :cond_4

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 40
    :cond_4
    const v0, 0x1adb0

    if-ge p0, v0, :cond_5

    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0

    .line 41
    :cond_5
    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0
.end method

.method static maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 50
    .local p0, "r":Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;, "Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;->exec()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 53
    const/4 v1, 0x0

    return-object v1
.end method

.method static maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;

    .line 63
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;->exec()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 67
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
