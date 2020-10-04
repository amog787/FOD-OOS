.class public abstract Lcom/android/server/location/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssStatusListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssStatusListenerHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "GnssStatusListenerHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssStatusListenerHelper;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 32
    const-string v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->setSupported(Z)V

    .line 34
    return-void
.end method

.method static synthetic lambda$onFirstFix$2(ILandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p0, "timeToFirstFix"    # I
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    .line 64
    return-void
.end method

.method static synthetic lambda$onStatusChanged$0(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p0, "listener"    # Landroid/location/IGnssStatusListener;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    .line 53
    return-void
.end method

.method static synthetic lambda$onStatusChanged$1(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 0
    .param p0, "listener"    # Landroid/location/IGnssStatusListener;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    .line 57
    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssStatusListener;",
            ">;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$onNmeaReceived$4$GnssStatusListenerHelper(JLjava/lang/String;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/location/IGnssStatusListener;
    .param p5, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/location/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p5, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const-string v1, "GnssStatusListenerHelper"

    const-string v2, "NMEA"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-interface {p4, p1, p2, p3}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 93
    return-void
.end method

.method public synthetic lambda$onSvStatusChanged$3$GnssStatusListenerHelper(I[I[F[F[F[FLandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F
    .param p7, "listener"    # Landroid/location/IGnssStatusListener;
    .param p8, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p8}, Lcom/android/server/location/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const-string v1, "GnssStatusListenerHelper"

    const-string v2, "GNSS status"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_0
    move-object v0, p7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 83
    return-void
.end method

.method public onFirstFix(I)V
    .locals 1
    .param p1, "timeToFirstFix"    # I

    .line 62
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$0MNjUouf1HJVcFD10rzoJIkzCrw;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$0MNjUouf1HJVcFD10rzoJIkzCrw;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 66
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 94
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1, "isNavigating"    # Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$H9Tg_OtCE9BSJiAQYs_ITHFpiHU;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$H9Tg_OtCE9BSJiAQYs_ITHFpiHU;

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$6s2HBSMgP5pXrugfCvtIf9QHndI;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$6s2HBSMgP5pXrugfCvtIf9QHndI;

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 59
    :goto_0
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F

    .line 75
    new-instance v8, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;-><init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V

    invoke-virtual {p0, v8}, Lcom/android/server/location/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 84
    return-void
.end method

.method protected registerWithService()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected unregisterFromService()V
    .locals 0

    .line 42
    return-void
.end method
