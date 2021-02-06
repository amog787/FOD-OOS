.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$2:Z

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$2:Z

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$EROyQL0gB8UDAPPZPb6g61OzIOY;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-static {v0, v1, v2, v3}, Landroid/net/IpMemoryStoreClient;->lambda$delete$18(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method
