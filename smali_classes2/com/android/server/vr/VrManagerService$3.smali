.class Lcom/android/server/vr/VrManagerService$3;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 437
    invoke-static {p1}, Landroid/service/vr/IVrListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrListener;

    move-result-object v0

    return-object v0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IInterface;

    .line 442
    instance-of v0, p1, Landroid/service/vr/IVrListener;

    return v0
.end method
