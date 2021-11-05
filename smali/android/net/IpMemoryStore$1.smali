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

    .line 46
    iput-object p1, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-direct {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "31826566143ef882d67fac9f24566f73df4907b4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 54
    const/4 v0, 0x7

    return v0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 1
    .param p1, "memoryStore"    # Landroid/net/IIpMemoryStore;

    .line 49
    iget-object v0, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-static {v0}, Landroid/net/IpMemoryStore;->access$000(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
