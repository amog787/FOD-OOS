.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "VoiceInteractionManagerServiceShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;->requestShow(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pw:Ljava/io/PrintWriter;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;

    .line 86
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "VoiceInteractionManager"

    const-string v1, "onFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$pw:Ljava/io/PrintWriter;

    const-string v1, "callback failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    return-void
.end method

.method public onShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-string v0, "VoiceInteractionManager"

    const-string v1, "onShown()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$result:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    return-void
.end method
