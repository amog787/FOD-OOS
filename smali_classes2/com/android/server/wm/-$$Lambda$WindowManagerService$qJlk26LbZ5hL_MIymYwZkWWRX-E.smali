.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$qJlk26LbZ5hL_MIymYwZkWWRX-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qJlk26LbZ5hL_MIymYwZkWWRX-E;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qJlk26LbZ5hL_MIymYwZkWWRX-E;->f$0:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$12(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
