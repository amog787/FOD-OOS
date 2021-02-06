.class Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteInsetsControlTarget"
.end annotation


# instance fields
.field private final mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "controller"    # Landroid/view/IDisplayWindowInsetsController;

    .line 6116
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6117
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 6118
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;)Landroid/view/IDisplayWindowInsetsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 6113
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    return-object v0
.end method


# virtual methods
.method public hideInsets(IZ)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 6152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0, p1, p2}, Landroid/view/IDisplayWindowInsetsController;->hideInsets(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6155
    goto :goto_0

    .line 6153
    :catch_0
    move-exception v0

    .line 6154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyInsetsChanged()V
    .locals 3

    .line 6122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 6123
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 6122
    invoke-interface {v0, v1}, Landroid/view/IDisplayWindowInsetsController;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6126
    goto :goto_0

    .line 6124
    :catch_0
    move-exception v0

    .line 6125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver inset state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6127
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .locals 4

    .line 6131
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 6133
    .local v0, "stateController":Lcom/android/server/wm/InsetsStateController;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    .line 6134
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v3

    .line 6133
    invoke-interface {v1, v2, v3}, Landroid/view/IDisplayWindowInsetsController;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6137
    goto :goto_0

    .line 6135
    :catch_0
    move-exception v1

    .line 6136
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to deliver inset state change"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public showInsets(IZ)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 6143
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0, p1, p2}, Landroid/view/IDisplayWindowInsetsController;->showInsets(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6146
    goto :goto_0

    .line 6144
    :catch_0
    move-exception v0

    .line 6145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver showInsets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6147
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
