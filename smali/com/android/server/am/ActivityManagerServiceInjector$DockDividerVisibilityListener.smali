.class Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 731
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 2
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is in multiWindow mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$1202(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z

    .line 743
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .param p4, "isHomeStackResizable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    return-void
.end method
