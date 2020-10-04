.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$y9CML5-H8l7LhlZfPXBMWllilSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/net/IIpMemoryStore;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$y9CML5-H8l7LhlZfPXBMWllilSs;->f$0:Landroid/net/IIpMemoryStore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$y9CML5-H8l7LhlZfPXBMWllilSs;->f$0:Landroid/net/IIpMemoryStore;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$factoryReset$18(Landroid/net/IIpMemoryStore;)V

    return-void
.end method
