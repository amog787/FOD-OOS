.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/role/RoleUserState;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$0:Lcom/android/server/role/RoleUserState;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$2:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$0:Lcom/android/server/role/RoleUserState;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$4FcQsmMH6Dhstzx5gl80tO2TkTw;->f$2:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/role/RoleManagerService;->lambda$maybeGrantDefaultRolesInternal$1(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/lang/Boolean;)V

    return-void
.end method
