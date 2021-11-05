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

    .line 168
    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$300(Lcom/android/server/connectivity/FiveGStatusListener;I)V

    .line 187
    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->access$200(Lcom/android/server/connectivity/FiveGStatusListener;I)V

    .line 181
    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$100(Lcom/android/server/connectivity/FiveGStatusListener;)V

    .line 177
    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener$1;->this$0:Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-static {v0}, Lcom/android/server/connectivity/FiveGStatusListener;->access$000(Lcom/android/server/connectivity/FiveGStatusListener;)V

    .line 173
    nop

    .line 194
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
