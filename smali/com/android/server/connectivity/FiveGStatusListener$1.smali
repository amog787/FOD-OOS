.class Lcom/android/server/connectivity/FiveGStatusListener$1;
.super Landroid/os/Handler;
.source "FiveGStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/FiveGStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/FiveGStatusListener;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/FiveGStatusListener;

    .line 160
    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    const/16 v1, 0x401

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$100(Lcom/android/server/connectivity/FiveGStatusListener;)V

    .line 169
    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$000(Lcom/android/server/connectivity/FiveGStatusListener;)V

    .line 165
    nop

    .line 174
    :goto_0
    return-void
.end method
