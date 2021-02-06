.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$1:I

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$0:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$1:I

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/wm/DisplayContent;->lambda$applyRotation$9(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V

    return-void
.end method
