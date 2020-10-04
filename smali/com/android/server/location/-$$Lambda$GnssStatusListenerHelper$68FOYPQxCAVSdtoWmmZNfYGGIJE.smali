.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field private final synthetic f$1:I

.field private final synthetic f$2:[I

.field private final synthetic f$3:[F

.field private final synthetic f$4:[F

.field private final synthetic f$5:[F

.field private final synthetic f$6:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$2:[I

    iput-object p4, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$3:[F

    iput-object p5, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$4:[F

    iput-object p6, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$5:[F

    iput-object p7, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$6:[F

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$2:[I

    iget-object v3, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$3:[F

    iget-object v4, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$4:[F

    iget-object v5, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$5:[F

    iget-object v6, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$68FOYPQxCAVSdtoWmmZNfYGGIJE;->f$6:[F

    move-object v7, p1

    check-cast v7, Landroid/location/IGnssStatusListener;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GnssStatusListenerHelper;->lambda$onSvStatusChanged$3$GnssStatusListenerHelper(I[I[F[F[F[FLandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
