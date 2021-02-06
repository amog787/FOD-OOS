.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssVisibilityControl$aXU5oxv5Ht00C9f_pyOZ-ZLUvq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssVisibilityControl$aXU5oxv5Ht00C9f_pyOZ-ZLUvq8;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iput-object p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssVisibilityControl$aXU5oxv5Ht00C9f_pyOZ-ZLUvq8;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssVisibilityControl$aXU5oxv5Ht00C9f_pyOZ-ZLUvq8;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssVisibilityControl$aXU5oxv5Ht00C9f_pyOZ-ZLUvq8;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$runEventAndReleaseWakeLock$6$GnssVisibilityControl(Ljava/lang/Runnable;)V

    return-void
.end method
