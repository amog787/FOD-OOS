.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$hEu5ePDZ4NgTuveH0byeCRbh1RU;->f$0:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->lambda$setDefaultBrowser$0(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
