.class Landroid/net/IpMemoryStore$1;
.super Landroid/net/IIpMemoryStoreCallbacks$Stub;
.source "IpMemoryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/IpMemoryStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpMemoryStore;


# direct methods
.method constructor <init>(Landroid/net/IpMemoryStore;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpMemoryStore;

    .line 45
    iput-object p1, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-direct {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 1

    .line 53
    const/4 v0, 0x3

    return v0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "memoryStore"    # Landroid/net/IIpMemoryStore;

    .line 48
    iget-object v0, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-static {v0}, Landroid/net/IpMemoryStore;->access$000(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
