.class Lcom/android/server/am/ActivityManagerShellCommand$2;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 979
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$2;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .line 982
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 983
    return-void
.end method
