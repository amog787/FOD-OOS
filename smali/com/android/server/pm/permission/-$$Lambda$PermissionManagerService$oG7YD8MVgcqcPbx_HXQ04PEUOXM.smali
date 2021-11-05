.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$oG7YD8MVgcqcPbx_HXQ04PEUOXM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$grantDefaultPermissionsToActiveLuiApp$7$PermissionManagerService(Ljava/lang/String;I)V

    return-void
.end method
