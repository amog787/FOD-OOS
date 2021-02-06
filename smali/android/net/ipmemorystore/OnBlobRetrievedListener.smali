.class public interface abstract Landroid/net/ipmemorystore/OnBlobRetrievedListener;
.super Ljava/lang/Object;
.source "OnBlobRetrievedListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 34
    new-instance v0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
.end method
