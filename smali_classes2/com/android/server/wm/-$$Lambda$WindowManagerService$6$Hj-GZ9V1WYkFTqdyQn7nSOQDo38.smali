.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService$6;

.field public final synthetic f$1:Landroid/os/PowerSaveState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$6;Landroid/os/PowerSaveState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;->f$0:Lcom/android/server/wm/WindowManagerService$6;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;->f$1:Landroid/os/PowerSaveState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;->f$0:Lcom/android/server/wm/WindowManagerService$6;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6$Hj-GZ9V1WYkFTqdyQn7nSOQDo38;->f$1:Landroid/os/PowerSaveState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$6;->lambda$onLowPowerModeChanged$0$WindowManagerService$6(Landroid/os/PowerSaveState;)V

    return-void
.end method
