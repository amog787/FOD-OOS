.class Lcom/android/server/vr/VrManagerService$6;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$PendingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field final synthetic val$b:Z

.field final synthetic val$c:Landroid/content/ComponentName;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 998
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iput p4, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runEvent(Landroid/os/IInterface;)V
    .locals 4
    .param p1, "service"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    move-object v0, p1

    check-cast v0, Landroid/service/vr/IVrListener;

    .line 1006
    .local v0, "l":Landroid/service/vr/IVrListener;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iget v3, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    invoke-interface {v0, v1, v2, v3}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V

    .line 1007
    return-void
.end method
