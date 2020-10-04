.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/util/concurrent/CompletableFuture;

.field private final synthetic f$2:Lcom/android/server/role/RoleUserState;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/CompletableFuture;Lcom/android/server/role/RoleUserState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$0:I

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$1:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$2:Lcom/android/server/role/RoleUserState;

    iput-object p4, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$0:I

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$1:Ljava/util/concurrent/CompletableFuture;

    iget-object v2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$2:Lcom/android/server/role/RoleUserState;

    iget-object v3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$pEzDvTDAn4HPjdI4MM6WI_bmKlo;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/role/RoleManagerService;->lambda$performInitialGrantsIfNecessaryAsync$0(ILjava/util/concurrent/CompletableFuture;Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
