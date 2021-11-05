.class Lcom/android/server/DropBoxManagerService$3;
.super Landroid/database/ContentObserver;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DropBoxManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 392
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 395
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v1}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 396
    return-void
.end method
