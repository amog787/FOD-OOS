.class public abstract Lcom/android/server/location/gnss/GnssStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Ljava/lang/Void;",
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

    .line 33
    const-string v0, "GnssStatusListenerHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 36
    const-string v0, "GnssStatusListenerHelper"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->setSupported(Z)V

    .line 38
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

    .line 67
    invoke-interface {p1, p0}, Landroid/location/IGnssStatusListener;->onFirstFix(I)V

    .line 68
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

    .line 56
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStarted()V

    .line 57
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

    .line 60
    invoke-interface {p0}, Landroid/location/IGnssStatusListener;->onGnssStopped()V

    .line 61
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

    .line 50
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

    .line 93
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p5, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v1, "GnssStatusListenerHelper"

    const-string v2, "NMEA"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-interface {p4, p1, p2, p3}, Landroid/location/IGnssStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 98
    return-void
.end method

.method public synthetic lambda$onSvStatusChanged$3$GnssStatusListenerHelper(I[I[F[F[F[F[FLandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V
    .locals 10
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F
    .param p8, "listener"    # Landroid/location/IGnssStatusListener;
    .param p9, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move-object v0, p0

    move-object/from16 v1, p9

    iget-object v2, v0, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const-string v3, "GnssStatusListenerHelper"

    const-string v4, "GNSS status"

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 86
    :cond_0
    move-object/from16 v2, p8

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F[F)V

    .line 88
    return-void
.end method

.method public onFirstFix(I)V
    .locals 1
    .param p1, "timeToFirstFix"    # I

    .line 66
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 70
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 99
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1, "isNavigating"    # Z

    .line 54
    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 63
    :goto_0
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[F[F[F)V
    .locals 10
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "carrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 80
    new-instance v9, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;-><init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;I[I[F[F[F[F[F)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 89
    return-void
.end method

.method protected registerWithService()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected unregisterFromService()V
    .locals 0

    .line 46
    return-void
.end method
