.class public interface abstract Landroid/net/ipmemorystore/OnL2KeyResponseListener;
.super Ljava/lang/Object;
.source "OnL2KeyResponseListener.java"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .locals 1
    .param p0, "listener"    # Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 34
    new-instance v0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;-><init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V
.end method
