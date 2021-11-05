.class public interface abstract Landroid/net/ipmemorystore/OnStatusListener;
.super Ljava/lang/Object;
.source "OnStatusListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnStatusListener;

    .line 35
    new-instance v0, Landroid/net/ipmemorystore/OnStatusListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnStatusListener$1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onComplete(Landroid/net/ipmemorystore/Status;)V
.end method
