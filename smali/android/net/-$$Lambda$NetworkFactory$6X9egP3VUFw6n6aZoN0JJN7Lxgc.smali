.class public final synthetic Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactory;

.field public final synthetic f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;->f$0:Landroid/net/NetworkFactory;

    iput-object p2, p0, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;->f$0:Landroid/net/NetworkFactory;

    iget-object v1, p0, Landroid/net/-$$Lambda$NetworkFactory$6X9egP3VUFw6n6aZoN0JJN7Lxgc;->f$1:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->lambda$releaseRequestAsUnfulfillableByAnyFactory$0$NetworkFactory(Landroid/net/NetworkRequest;)V

    return-void
.end method
