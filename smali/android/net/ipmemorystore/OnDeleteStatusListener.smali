.class public interface abstract Landroid/net/ipmemorystore/OnDeleteStatusListener;
.super Ljava/lang/Object;
.source "OnDeleteStatusListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 38
    new-instance v0, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onComplete(Landroid/net/ipmemorystore/Status;I)V
.end method
