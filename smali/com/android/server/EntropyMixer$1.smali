.class Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method constructor <init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/EntropyMixer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 73
    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    const-string v0, "EntropyMixer"

    const-string v1, "Will not process invalid message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$000(Lcom/android/server/EntropyMixer;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$100(Lcom/android/server/EntropyMixer;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {v0}, Lcom/android/server/EntropyMixer;->access$200(Lcom/android/server/EntropyMixer;)V

    .line 86
    return-void
.end method
