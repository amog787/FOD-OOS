.class public final synthetic Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DragState;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$0:Lcom/android/server/wm/DragState;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$1:F

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$2:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$0:Lcom/android/server/wm/DragState;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$1:F

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;->f$2:F

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DragState;->lambda$broadcastDragStartedLocked$0$DragState(FFLcom/android/server/wm/WindowState;)V

    return-void
.end method
