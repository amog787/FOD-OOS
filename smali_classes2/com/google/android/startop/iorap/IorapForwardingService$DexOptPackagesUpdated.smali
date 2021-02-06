.class Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;
.super Ljava/lang/Object;
.source "IorapForwardingService.java"

# interfaces
.implements Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexOptPackagesUpdated"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method private constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/IorapForwardingService$1;

    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-void
.end method

.method static synthetic lambda$onPackagesUpdated$0(Ljava/lang/String;Lcom/google/android/startop/iorap/IIorap;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "remote"    # Lcom/google/android/startop/iorap/IIorap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-static {}, Lcom/google/android/startop/iorap/RequestId;->nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;

    move-result-object v0

    .line 330
    invoke-static {p0}, Lcom/google/android/startop/iorap/DexOptEvent;->createPackageUpdate(Ljava/lang/String;)Lcom/google/android/startop/iorap/DexOptEvent;

    move-result-object v1

    .line 329
    invoke-interface {p1, v0, v1}, Lcom/google/android/startop/iorap/IIorap;->onDexOptEvent(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/DexOptEvent;)V

    return-void
.end method


# virtual methods
.method public onPackagesUpdated(Landroid/util/ArraySet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 325
    .local v1, "updated":[Ljava/lang/String;
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 326
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPackagesUpdated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IorapForwardingService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v4, p0, Lcom/google/android/startop/iorap/IorapForwardingService$DexOptPackagesUpdated;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v4}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$400(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v4

    new-instance v5, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U;

    invoke-direct {v5, v3}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$500(Lcom/google/android/startop/iorap/IIorap;Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)Z

    .line 325
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method
