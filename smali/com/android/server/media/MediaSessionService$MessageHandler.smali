.class final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_SESSIONS_1_CHANGED:I = 0x1

.field private static final MSG_SESSIONS_2_CHANGED:I = 0x2


# instance fields
.field private final mIntegerCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 2767
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2770
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2774
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->pushSession2Changed(I)V

    goto :goto_0

    .line 2776
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$6200(Lcom/android/server/media/MediaSessionService;I)V

    .line 2777
    nop

    .line 2782
    :goto_0
    return-void
.end method

.method public postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecordImpl;

    .line 2786
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2787
    .local v0, "userIdInteger":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2788
    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2789
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2792
    :cond_0
    instance-of v1, p1, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_1

    .line 2793
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 2794
    .local v1, "msg":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2795
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2796
    return-void
.end method
