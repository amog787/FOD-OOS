.class public final synthetic Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;->f$0:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/android/server/net/IpConfigStore;->lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V

    return-void
.end method
