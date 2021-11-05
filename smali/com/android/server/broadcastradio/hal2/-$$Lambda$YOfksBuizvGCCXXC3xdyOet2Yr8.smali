.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;->f$0:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    return-void
.end method


# virtual methods
.method public final exec()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;->f$0:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->cancel()V

    return-void
.end method
