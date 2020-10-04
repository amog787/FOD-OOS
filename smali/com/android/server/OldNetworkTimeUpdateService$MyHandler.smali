.class Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .line 259
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$300(Lcom/android/server/OldNetworkTimeUpdateService;I)V

    .line 272
    :goto_0
    return-void
.end method
