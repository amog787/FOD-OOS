.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$V28n1xp79cKTZf0npS-vzf7FUo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$V28n1xp79cKTZf0npS-vzf7FUo8;->f$0:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$V28n1xp79cKTZf0npS-vzf7FUo8;->f$0:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$11(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void
.end method
