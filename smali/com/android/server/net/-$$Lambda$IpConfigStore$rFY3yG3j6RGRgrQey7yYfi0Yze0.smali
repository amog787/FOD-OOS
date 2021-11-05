.class public final synthetic Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;->f$0:Landroid/util/ArrayMap;

    invoke-static {v0, p1}, Lcom/android/server/net/IpConfigStore;->lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V

    return-void
.end method
