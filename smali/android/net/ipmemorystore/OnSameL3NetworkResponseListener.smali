.class public interface abstract Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;
.super Ljava/lang/Object;
.source "OnSameL3NetworkResponseListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    .line 35
    new-instance v0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;-><init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V
.end method
