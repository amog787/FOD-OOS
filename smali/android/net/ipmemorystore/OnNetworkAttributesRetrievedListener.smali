.class public interface abstract Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;
.super Ljava/lang/Object;
.source "OnNetworkAttributesRetrievedListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 35
    new-instance v0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V
.end method
