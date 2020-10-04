.class Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;
.super Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.source "OnSameL3NetworkResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 1

    .line 49
    const/4 v0, 0x3

    return v0
.end method

.method public onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 3
    .param p1, "statusParcelable"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "sameL3NetworkResponseParcelable"    # Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;

    .line 40
    iget-object v0, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    new-instance v2, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    invoke-direct {v2, p2}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V

    invoke-interface {v0, v1, v2}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    .line 45
    :cond_0
    return-void
.end method
