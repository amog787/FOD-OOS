.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$9BsOvIfsXOY41ZJQWdN0BGdfLqM;->f$1:I

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$resetRuntimePermissions$1$PermissionManagerService(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
