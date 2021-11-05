.class Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "AutofillManagerServiceShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    .line 368
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 371
    nop

    .line 372
    const-string/jumbo v0, "sessions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 373
    .local v0, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    .local v2, "session":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .end local v2    # "session":Ljava/lang/String;
    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 377
    return-void
.end method
