.class Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"    # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 105
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;

    .line 106
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 107
    return-void
.end method

.method public linkToDeath()V
    .locals 3

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBarManagerService"

    const-string v2, "Unable to register Death Recipient for status bar"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
