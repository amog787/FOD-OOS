.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(Landroid/os/IBinder;)V

    return-void
.end method
