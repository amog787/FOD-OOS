.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4;->f$0:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$-PDN6l_ua39RgTfOqb8dRfbBiz4;->f$0:I

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onFirstFix$2(ILandroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
