.class Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.source "OnNetworkAttributesRetrievedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 1

    .line 50
    const/4 v0, 0x3

    return v0
.end method

.method public onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 3
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "l2Key"    # Ljava/lang/String;
    .param p3, "networkAttributesParcelable"    # Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 41
    iget-object v0, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    if-eqz v0, :cond_1

    .line 42
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    .line 43
    if-nez p3, :cond_0

    .line 44
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/net/ipmemorystore/NetworkAttributes;

    invoke-direct {v2, p3}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 42
    :goto_0
    invoke-interface {v0, v1, p2, v2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    .line 46
    :cond_1
    return-void
.end method
