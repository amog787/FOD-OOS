.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;[ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$1:[Z

    iput p3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$2:I

    iput p4, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$3:I

    iput p5, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$1:[Z

    iget v2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$2:I

    iget v3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$3:I

    iget v4, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$8MsCUqeSxDj-MAni8qzyAjlwj_8;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$updatePermissionFlagsForAllApps$0$PermissionManagerService([ZIIILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
