.class Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
.super Ljava/lang/Object;
.source "WindowMagnificationConnectionWrapper.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowMagnificationConnectionWrapper"


# instance fields
.field private final mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;


# direct methods
.method constructor <init>(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 39
    return-void
.end method


# virtual methods
.method disableWindowMagnification(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->disableWindowMagnification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    const/4 v0, 0x1

    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method enableWindowMagnification(IFFF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/accessibility/IWindowMagnificationConnection;->enableWindowMagnification(IFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    const/4 v0, 0x1

    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 48
    return-void
.end method

.method moveWindowMagnifier(IFF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/accessibility/IWindowMagnificationConnection;->moveWindowMagnifier(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    const/4 v0, 0x1

    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    .locals 2
    .param p1, "connectionCallback"    # Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IWindowMagnificationConnection;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    const/4 v0, 0x1

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method setScale(IF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnection;->setScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .line 71
    const/4 v0, 0x1

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IWindowMagnificationConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IWindowMagnificationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    return-void
.end method
