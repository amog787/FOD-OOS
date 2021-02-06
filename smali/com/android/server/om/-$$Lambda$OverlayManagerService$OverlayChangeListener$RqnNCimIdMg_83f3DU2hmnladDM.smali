.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iput-object p2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iget-object v1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(Ljava/lang/String;I)V

    return-void
.end method
