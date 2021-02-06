.class Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "RoleManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CompletableFuture<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerShellCommand;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->this$0:Lcom/android/server/role/RoleManagerShellCommand;

    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerShellCommand;Lcom/android/server/role/RoleManagerShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerShellCommand;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerShellCommand$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;-><init>(Lcom/android/server/role/RoleManagerShellCommand;)V

    return-void
.end method


# virtual methods
.method public createCallback()Landroid/os/RemoteCallback;
    .locals 2

    .line 45
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q;

    invoke-direct {v1, p0}, Lcom/android/server/role/-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q;-><init>(Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public synthetic lambda$createCallback$0$RoleManagerShellCommand$CallbackFuture(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    .line 46
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "successful":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 52
    :goto_1
    return-void
.end method

.method public waitForResult()I
    .locals 4

    .line 57
    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->this$0:Lcom/android/server/role/RoleManagerShellCommand;

    invoke-virtual {v1}, Lcom/android/server/role/RoleManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: see logcat for details.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const/4 v1, -0x1

    return v1
.end method
