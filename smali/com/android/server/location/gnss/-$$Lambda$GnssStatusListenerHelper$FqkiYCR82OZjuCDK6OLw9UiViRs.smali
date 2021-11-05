.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[F

.field public final synthetic f$4:[F

.field public final synthetic f$5:[F

.field public final synthetic f$6:[F

.field public final synthetic f$7:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;I[I[F[F[F[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$2:[I

    iput-object p4, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$3:[F

    iput-object p5, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$4:[F

    iput-object p6, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$5:[F

    iput-object p7, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$6:[F

    iput-object p8, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$7:[F

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$1:I

    iget-object v2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$2:[I

    iget-object v3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$3:[F

    iget-object v4, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$4:[F

    iget-object v5, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$5:[F

    iget-object v6, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$6:[F

    iget-object v7, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$FqkiYCR82OZjuCDK6OLw9UiViRs;->f$7:[F

    move-object v8, p1

    check-cast v8, Landroid/location/IGnssStatusListener;

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onSvStatusChanged$3$GnssStatusListenerHelper(I[I[F[F[F[F[FLandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
