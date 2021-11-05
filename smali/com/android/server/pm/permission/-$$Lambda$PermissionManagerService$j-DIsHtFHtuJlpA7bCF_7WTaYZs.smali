.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/permission/BasePermission;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;->f$1:Lcom/android/server/pm/permission/BasePermission;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;->f$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$j-DIsHtFHtuJlpA7bCF_7WTaYZs;->f$1:Lcom/android/server/pm/permission/BasePermission;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$updatePermissionSourcePackage$13$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
