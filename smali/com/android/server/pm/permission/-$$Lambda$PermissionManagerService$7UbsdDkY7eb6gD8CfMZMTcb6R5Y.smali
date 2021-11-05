.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$7UbsdDkY7eb6gD8CfMZMTcb6R5Y;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->lambda$getPackagesWithAutoRevokePolicy$10(ILjava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
