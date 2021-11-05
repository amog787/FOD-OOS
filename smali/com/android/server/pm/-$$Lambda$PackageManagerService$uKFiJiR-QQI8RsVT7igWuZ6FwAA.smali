.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$uKFiJiR-QQI8RsVT7igWuZ6FwAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$uKFiJiR-QQI8RsVT7igWuZ6FwAA;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$uKFiJiR-QQI8RsVT7igWuZ6FwAA;->f$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$new$10$PackageManagerService()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v0

    return-object v0
.end method
