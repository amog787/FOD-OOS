.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;->f$0:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;->f$1:I

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->lambda$resetAllRuntimePermissions$0$PermissionManagerService$PermissionManagerServiceInternalImpl(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
