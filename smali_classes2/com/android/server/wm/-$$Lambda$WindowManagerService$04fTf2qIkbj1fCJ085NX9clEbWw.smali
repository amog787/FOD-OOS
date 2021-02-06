.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$04fTf2qIkbj1fCJ085NX9clEbWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$04fTf2qIkbj1fCJ085NX9clEbWw;->f$0:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$04fTf2qIkbj1fCJ085NX9clEbWw;->f$0:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$syncInputTransactions$16(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
