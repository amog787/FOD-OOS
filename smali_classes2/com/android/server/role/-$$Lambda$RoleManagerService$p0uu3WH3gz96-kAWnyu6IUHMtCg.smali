.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/role/RoleManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;->f$0:Lcom/android/server/role/RoleManagerService;

    iput p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;->f$0:Lcom/android/server/role/RoleManagerService;

    iget v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$p0uu3WH3gz96-kAWnyu6IUHMtCg;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/role/RoleManagerService;->lambda$maybeGrantDefaultRolesAsync$0$RoleManagerService(I)V

    return-void
.end method
