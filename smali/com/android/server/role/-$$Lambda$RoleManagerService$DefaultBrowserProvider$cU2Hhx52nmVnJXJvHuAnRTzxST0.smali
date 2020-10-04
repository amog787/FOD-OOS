.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->lambda$setDefaultBrowserAsync$1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
