.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;->f$0:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;->f$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->lambda$schedulePersistSettings$0$OverlayManagerService()V

    return-void
.end method
