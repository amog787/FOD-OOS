.class final Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "InstantAppResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetInstantAppResolveInfoCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Ljava/util/List<",
        "Landroid/content/pm/InstantAppResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 341
    invoke-static {}, Lcom/android/server/pm/InstantAppResolverConnection;->access$600()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 342
    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    .line 353
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "target"    # Landroid/app/IInstantAppResolver;
    .param p2, "sanitizedIntent"    # Landroid/content/Intent;
    .param p3, "hashPrefix"    # [I
    .param p4, "userId"    # I
    .param p5, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IInstantAppResolver;",
            "Landroid/content/Intent;",
            "[II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->onBeforeRemoteCall()I

    move-result v7

    .line 359
    .local v7, "sequence":I
    iget-object v6, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Landroid/os/IRemoteCallback;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, v7

    invoke-interface/range {v0 .. v6}, Landroid/app/IInstantAppResolver;->getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;ILandroid/os/IRemoteCallback;)V

    .line 361
    invoke-virtual {p0, v7}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
