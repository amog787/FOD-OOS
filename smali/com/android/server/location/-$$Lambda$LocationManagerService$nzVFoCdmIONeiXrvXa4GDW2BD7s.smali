.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$0$LocationManagerService(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
