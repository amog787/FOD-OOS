.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->lambda$setDefaultHomeAsync$0(Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
