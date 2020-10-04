.class final Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# static fields
.field static final DISMISS_DIALOG_UI_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6378
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6379
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6380
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 6384
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6386
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    .line 6387
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6388
    nop

    .line 6391
    .end local v0    # "d":Landroid/app/Dialog;
    :goto_0
    return-void
.end method
