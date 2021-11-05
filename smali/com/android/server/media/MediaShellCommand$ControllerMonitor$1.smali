.class Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;
.super Landroid/os/HandlerThread;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    .param p2, "name"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->access$200(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->access$100(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    iget-object v1, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->access$300(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error registering monitor callback"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
