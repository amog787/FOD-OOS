.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;->f$1:Landroid/os/UserHandle;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$restoreDelayedRuntimePermissions$0$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V

    return-void
.end method
