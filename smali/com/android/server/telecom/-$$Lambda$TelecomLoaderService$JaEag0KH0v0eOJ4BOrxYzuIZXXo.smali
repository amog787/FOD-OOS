.class public final synthetic Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/telecom/TelecomLoaderService;

.field private final synthetic f$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p2, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;->f$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;->f$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object v1, p0, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;->f$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->lambda$registerDefaultAppNotifier$3$TelecomLoaderService(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
