.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-boolean p3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$5:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-boolean v2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$_Kakccz_-nomXOc_Nhv5q-uqA7I;->f$5:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-object v6, p1

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$updatePermissions$11$PermissionManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
