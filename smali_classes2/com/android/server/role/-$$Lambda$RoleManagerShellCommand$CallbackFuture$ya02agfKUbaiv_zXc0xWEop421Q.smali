.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q;->f$0:Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerShellCommand$CallbackFuture$ya02agfKUbaiv_zXc0xWEop421Q;->f$0:Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;

    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleManagerShellCommand$CallbackFuture;->lambda$createCallback$0$RoleManagerShellCommand$CallbackFuture(Landroid/os/Bundle;)V

    return-void
.end method
