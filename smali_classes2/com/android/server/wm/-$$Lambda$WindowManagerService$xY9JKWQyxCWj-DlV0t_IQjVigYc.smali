.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$xY9JKWQyxCWj-DlV0t_IQjVigYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$xY9JKWQyxCWj-DlV0t_IQjVigYc;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$xY9JKWQyxCWj-DlV0t_IQjVigYc;->f$0:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$15(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
